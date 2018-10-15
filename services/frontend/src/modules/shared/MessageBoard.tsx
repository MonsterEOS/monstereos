import * as React from "react"
import { MonsterProps } from "../monsters/monsters"
import { Query } from "react-apollo"
import gql from "graphql-tag"

export interface Message {
    monster:MonsterProps,
    message:string
}


const MessageCard = (props:any) => {    
    return(
    <div key={props.message.id}>
       A monster says <em>{props.message.message}</em>
    </div>
    )
}


export const QUERY_MESSAGES = gql`
query LatestMessages($limit: Int!, $offset: Int!) {
  allMessages(
    first: $limit,
    offset: $offset,
    orderBy: ID_DESC,
  ) {
    edges {
      node { 
        id       
        message
      }
    }
  }
}
`

class MessageBoard extends React.Component<{}, {}> {

    public render() {
        const variables = {
            limit: 3,
            offset: 0
          }

        return <div className="container">
            <Query query={QUERY_MESSAGES} variables={variables}>
                {({data, loading, refetch}) => {

                if (loading || !data || !data.allMessages) {
                    return <span>
                    <i className="fa fa-spin fa-spinner" /> Loading... Our servers are Syncing with the Chain
                    </span>
                }
                const messages = data.allMessages.edges                
                
                return <div>
                    {messages.map(({node}:any, index:number) => {                        
                        return(
                    <MessageCard 
                        key = {node.id}                    
                        message = {node}/>
                    )})}
                    </div>
                }
            }
            </Query>
        </div>
    }
}  

export default MessageBoard