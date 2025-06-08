import 'package:jitsi_meet_flutter_sdk/jitsi_meet_flutter_sdk.dart';

class JitsiMeetController {
  final JitsiMeet _jitsiMeetPlugin = JitsiMeet();

  Future<void> joinMeeting(String roomName, String userName, String userEmail) async {
    var options = JitsiMeetConferenceOptions(
      room: roomName,
      userInfo: JitsiMeetUserInfo(
        displayName: userName,
        email: userEmail,
      ),
      configOverrides: {
        "startWithAudioMuted": true,
        "startWithVideoMuted": true,
      },
      featureFlags: {
        FeatureFlags.welcomePageEnabled: false,
        FeatureFlags.chatEnabled: true,
        FeatureFlags.audioFocusDisabled: true,
      },
    );

    var listener = JitsiMeetEventListener(
      conferenceJoined: (url) {
        print("Conference joined: $url");
      },
      conferenceTerminated: (url, error) {
        print("Conference terminated: $url, error: $error");
      },
      conferenceWillJoin: (url) {
        print("Conference will join: $url");
      },
    );

    await _jitsiMeetPlugin.join(options, listener);
  }

  Future<void> leaveMeeting() async {
    await _jitsiMeetPlugin.hangUp();
  }
}
