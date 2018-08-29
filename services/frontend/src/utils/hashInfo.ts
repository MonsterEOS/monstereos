import ecc from "eosjs-ecc"

const HASH_INFO_KEY = "hashInfo"

let mouseMove: any[] = []

const getHashInfo = () => {
  const hashInfoJson = localStorage.getItem(HASH_INFO_KEY)
  return hashInfoJson ? JSON.parse(hashInfoJson) : null
}

// generate secret and hash random pair
export const generateHashInfo = () => {

  const hashInfo = getHashInfo()

  if (!hashInfo) {
    // generate secret
    console.info(mouseMove)
    const hash = ecc.sha256("meos" + Date.now() + mouseMove.join())
    const hashBinary = Buffer.from(hash, "hex")
    const secret = ecc.sha256(hashBinary)

    const secretPair = { hash, secret }
    console.info("saving hashInfo")
    localStorage.setItem(HASH_INFO_KEY, JSON.stringify(secretPair))
    return secretPair
  } else {
    console.info("hashInfo restored")
    return hashInfo
  }
}

// destroy last battle commitment random pair
export const destroyHashInfo = () => {
  console.info("removing hashInfo")
  localStorage.removeItem(HASH_INFO_KEY)
}

// keep track of mouse to help hash generation
export const handleMouseMove = (event: any) => {
  let eventDoc
  let doc
  let body

  event = event || window.event // IE-ism

  // If pageX/Y aren't available and clientX/Y are,
  // calculate pageX/Y - logic taken from jQuery.
  // (This is to support old IE)
  if (event.pageX == null && event.clientX != null) {
      eventDoc = (event.target && event.target.ownerDocument) || document
      doc = eventDoc.documentElement
      body = eventDoc.body

      event.pageX = event.clientX +
        (doc && doc.scrollLeft || body && body.scrollLeft || 0) -
        (doc && doc.clientLeft || body && body.clientLeft || 0)
      event.pageY = event.clientY +
        (doc && doc.scrollTop  || body && body.scrollTop  || 0) -
        (doc && doc.clientTop  || body && body.clientTop  || 0 )
  }

  // Use event.pageX / event.pageY here
  mouseMove.unshift("x" + event.pageX + "y" + event.pageY)
  mouseMove = mouseMove.slice(0,10)
}

export const trackMouse = () => {
  console.info("tracking mouse for generating secrets")
  document.onmousemove = handleMouseMove
}