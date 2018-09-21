import * as React from "react"
import { MonsterProps } from "../monsters/monsters"

export interface Message {
    monster:MonsterProps,
    message:string
}

interface ReactState {
    messages: Message[]
}

const MessageCard = (props:any) => (
    <div>
        {props.message.monster.name} says {props.message.message}
    </div>
)

class MessageBoard extends React.Component<{}, ReactState> {
    public state = {
        messages:[]
    }

    public componentDidMount() {
        this.loadMessages()
    }

    public render() {
        const {messages} = this.state
        return <div className="container">
            {messages.map((message: any) => (
                <MessageCard
                    key={message.id}
                    message={message}
                    />
                    ))
            }
            </div>
    }

    private loadMessages = async () => {        
        this.setState({messages:[
            {monster:someMonster(1, "Bubble"), message:"Hello"},
            {monster:someMonster(2, "White Tiger"), message:"Hi"}
        ]})
    }
}  

const someMonster = (petId: number, name: string): MonsterProps => {
    return {
      id: petId,
      name,
      owner: "anowner",
      type: 1,
      deathAt: 0,
      createdAt: 0,
      lastFeedAt: 0,
      lastAwakeAt: 0,
      lastBedAt: 0,
      isSleeping: false,
      hunger: 100,
      health: 100,
      energy: 100,
      actions: []
    }
  }

export default MessageBoard