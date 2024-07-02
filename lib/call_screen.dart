import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';
import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';
import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';
import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';
import 'package:flutter/material.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class CallScreen extends StatefulWidget {
  final Call call;

  const CallScreen({
    Key? key,
    required this.call,
  }) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamCallContainer(
        call: widget.call,
        callContentBuilder: (
          BuildContext context,
          Call call,
          CallState callState,
        ) {
          return StreamCallContent(
            call: call,
            callState: callState,
            callControlsBuilder: (
              BuildContext context,
              Call call,
              CallState callState,
            ) {
              final localParticipant = callState.localParticipant!;
              return StreamCallControls(
                options: [
                  AddReactionOption(
                    call: call,
                    localParticipant: localParticipant,
                  ),
                  ToggleMicrophoneOption(
                    call: call,
                    localParticipant: localParticipant,
                  ),
                  ToggleCameraOption(
                    call: call,
                    localParticipant: localParticipant,
                  ),
                  LeaveCallOption(
                    call: call,
                    onLeaveCallTap: () {
                      call.leave();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

































// class CallScreen extends StatefulWidget {
//   final Call call;

//   const CallScreen({
//     Key? key,
//     required this.call,
//   }) : super(key: key);

//   @override
//   State<CallScreen> createState() => _CallScreenState();
// }

// class _CallScreenState extends State<CallScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _enableMicrophoneAndCamera();
//   }

//   void _enableMicrophoneAndCamera() {
//     final localParticipant = widget.call.localParticipant;
//     if (localParticipant != null) {
//       localParticipant.enableMicrophone();
//       localParticipant.enableCamera();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamCallContainer(
//         call: widget.call,
//         callContentBuilder: (
//           BuildContext context,
//           Call call,
//           CallState callState,
//         ) {
//           return StreamCallContent(
//             call: call,
//             callState: callState,
//             callControlsBuilder: (
//               BuildContext context,
//               Call call,
//               CallState callState,
//             ) {
//               final localParticipant = callState.localParticipant!;
//               return StreamCallControls(
//                 options: [
//                   FlipCameraOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   AddReactionOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   ToggleMicrophoneOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   ToggleCameraOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   LeaveCallOption(
//                     call: call,
//                     onLeaveCallTap: () {
//                       call.leave();
//                     },
//                   ),
//                 ],
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:stream_video_flutter/stream_video_flutter.dart';

// class CallScreen extends StatefulWidget {
//   final Call call;

//   const CallScreen({
//     Key? key,
//     required this.call,
//   }) : super(key: key);

//   @override
//   State<CallScreen> createState() => _CallScreenState();
// }

// class _CallScreenState extends State<CallScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _initializeCall();
//   }

//   void _initializeCall() async {
//     try {
//       // Assuming there are methods to enable microphone and camera after the call is initialized
//       await widget.call.initializeCall(
//         microphoneEnabled: true,
//         cameraEnabled: true,
//       );
//     } catch (e) {
//       debugPrint('Error initializing call: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamCallContainer(
//         call: widget.call,
        
//         callContentBuilder: (
          
//           BuildContext context,
//           Call call,
//           CallState callState,
//         ) {
//           return StreamCallContent(
            
//             call: call,
//             callState: callState,
//             callControlsBuilder: (
              
//               BuildContext context,
//               Call call,
//               CallState callState,
//             ) {
//               final localParticipant = callState.localParticipant!;
//               return StreamCallControls(
//                 options: [
//                   FlipCameraOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   AddReactionOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   ToggleMicrophoneOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   ToggleCameraOption(
//                     call: call,
//                     localParticipant: localParticipant,
//                   ),
//                   LeaveCallOption(
//                     call: call,
//                     onLeaveCallTap: () {
//                       call.leave();
//                     },
//                   ),
//                 ],
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


/*

 */