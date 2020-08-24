import consumer from './consumer';

const initChatroomCable = () => {
  const messagesContainer = document.querySelector('#messages');

  if (messagesContainer) {
    const chatroomId = messagesContainer.dataset.chatroomId;

    consumer.subscriptions.create(
      { channel: "ChatroomChannel", id: chatroomId },
      {
        received(data) {
          messagesContainer.insertAdjacentHTML('beforeend', data); // called when data is broadcast in the cable
        }
      }
    )
  }
}

export { initChatroomCable };
