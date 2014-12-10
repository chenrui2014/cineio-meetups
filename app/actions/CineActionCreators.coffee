AppDispatcher = require('../dispatcher/AppDispatcher');
MainConstants = require('../constants/MainConstants');
# ChatWebAPIUtils = require('../utils/ChatWebAPIUtils');
# MessageStore = require('../stores/MessageStore');

ActionTypes = MainConstants.ActionTypes;

module.exports =

  localWebcamStarted: (video)->
    AppDispatcher.handleCineAction
      type: ActionTypes.LOCAL_WEBCAM_STARTED
      video: video

  newPeer: (video)->
    AppDispatcher.handleCineAction
      type: ActionTypes.NEW_PEER
      video: video

  newCall: (call)->
    AppDispatcher.handleCineAction
      type: ActionTypes.INCOMING_CALL
      call: call

  currentCall: (call)->
    AppDispatcher.handleCineAction
      type: ActionTypes.OUTGOING_CALL
      call: call

  callRejected: (call)->
    AppDispatcher.handleCineAction
      type: ActionTypes.CALL_REJECTED
      call: call

  peerLeft: (video)->
    AppDispatcher.handleCineAction
      type: ActionTypes.PEER_LEFT
      video: video