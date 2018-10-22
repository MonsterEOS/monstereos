import * as React from "react"
import { connect } from "react-redux"
import {
  State,
  deleteNotification,
  Notification,
  NOTIFICATION_SUCCESS,
  NOTIFICATION_WARNING,
  NOTIFICATION_ERROR,
} from "../../store"

interface Props {
  notifications: any
  dispatchDeleteNotification: any
}

interface ReactState {
  activeMenu: boolean
}

const TOAST_CLEAN_INTERVAL = 1000
const TOAST_CLEAN_MAX_TIME = 5000

class Toaster extends React.Component<Props, {}> {
  public state: ReactState = { activeMenu: false }

  public componentDidMount() {
    this.toastCleaner()
  }

  public render() {
    const { notifications, dispatchDeleteNotification } = this.props

    return (
      <div className="toast">
        {notifications.map((notification: Notification) => (
          <Notification
            key={notification.id}
            notification={notification}
            onDelete={() => dispatchDeleteNotification(notification.id)}
          />
        ))}
      </div>
    )
  }

  private toastCleaner = () => {
    const { notifications, dispatchDeleteNotification } = this.props

    notifications.forEach((notification: Notification) => {
      if (Date.now() - notification.time > TOAST_CLEAN_MAX_TIME) {
        dispatchDeleteNotification(notification.id)
      }
    })

    setTimeout(this.toastCleaner, TOAST_CLEAN_INTERVAL)
  }
}

interface NotificationProps {
  notification: Notification
  onDelete: any
}

const Notification = ({ notification, onDelete }: NotificationProps) => {
  let classType = ""

  switch (notification.type) {
    case NOTIFICATION_SUCCESS:
      classType = "is-success"
      break
    case NOTIFICATION_WARNING:
      classType = "is-warning"
      break
    case NOTIFICATION_ERROR:
      classType = "is-danger"
      break
  }

  return (
    <div className={`notification on ${classType}`}>
      <button className="delete" onClick={onDelete} />
      {notification.text}
    </div>
  )
}

const mapStateToProps = (state: State) => ({
  notifications: state.notifications,
})

const mapDispatchToProps = {
  dispatchDeleteNotification: deleteNotification,
}

export default connect(
  mapStateToProps,
  mapDispatchToProps,
)(Toaster)
