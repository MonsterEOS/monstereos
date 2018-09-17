import * as React from "react"

interface ModalProps {
  title: string,
  close: () => void,
  children: any,
  footerButtons?: any[],
}

const Modal = (props: ModalProps) => (
  <div className="modal is-active">
    <div className="modal-background" />
    <div className="modal-card">
      <header className="modal-card-head">
        <span className="modal-card-title">{props.title}</span>
        <button className="delete" onClick={props.close} aria-label="close" />
      </header>
      <section className="modal-card-body">
        {props.children}
      </section>
      <footer className="modal-card-foot">
        {props.footerButtons}
      </footer>
    </div>
  </div>
)

export default Modal