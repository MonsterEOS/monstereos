import Notify from "notifyjs"

const onPermissionGranted = () => {
  console.info("Permission has been granted by the user")
}

const onPermissionDenied = () => {
  console.warn("Permission has been denied by the user")
}

export const requestNotificationPermission = () => {
  if (Notify.needsPermission && Notify.isSupported()) {
    Notify.requestPermission(onPermissionGranted, onPermissionDenied)
  }
}

export const browserNotify = (text: string) => {
  const notification = new Notify("MonsterEOS!", {
    body: text,
  })

  notification.show()
}
