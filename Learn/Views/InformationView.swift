// This struct defines the view where all the deforestation information from Content will appear.
import SwiftUI
import AVFoundation

struct InformationView: View {
     var synthesizer = AVSpeechSynthesizer()
    let content: Content
    @State var audioControl = "speaker.wave.1"
    @State var audioText = "Listen"
    
    
    func speak(txt: String){
        let utterance = AVSpeechUtterance(string: txt)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.3
       
        synthesizer.speak(utterance)
    }
    var body: some View {
            ZStack{
                AppColor.main.ignoresSafeArea()
                ScrollView([.vertical]) {
                    VStack {
                        Text(content.heading)
                            .font(.system(size: 36, weight: .heavy, design: .rounded))
                            .foregroundStyle(Color.green.secondary)
                            .padding()
                        
                        Image(content.imageUrl)
                            .resizable()
                            .frame(width:450, height:350)
                            .scaledToFill()
                            .clipShape(RoundedRectangle(cornerRadius: 25.0))
                            .padding()
                        HStack {
                            Button(action: {
                                if (synthesizer.isPaused){
                                    synthesizer.continueSpeaking()
                                    audioControl = "pause.circle"
                                    audioText = "Pause"
                        
            
                                }
                                else if (synthesizer.isSpeaking)
                                {
                                    synthesizer.pauseSpeaking(at: AVSpeechBoundary.word)
                                    audioControl = "play.circle"
                                    audioText = "Play"
                                    
                               
                                }
                                else if (!synthesizer.isSpeaking){
                                    
                                    speak(txt: content.text) 
                                    audioControl = "pause.circle"
                                    audioText = "Pause"
                                
                                }
                            } , label: {
                                VStack {
                                    Image(systemName: audioControl)
                                        .font(.system(size: 50))
                                    Text(audioText)
                                }
                            })
                            if synthesizer.isSpeaking {
                                Button(action: {
                                    synthesizer.stopSpeaking(at: AVSpeechBoundary.word)
                                    speak(txt: content.text)
                                    audioControl = "pause.circle"
                                }, label: {
                                    VStack {
                                        Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                                            .font(.system(size: 50))
                                        Text("restart")
                                    }
                                })
                            }
                            Text(content.text)
                                .font(.system(size: 15))
                                .baselineOffset(8.0)
                              //  .TextAlignment(.justified)
                                .frame(maxWidth: 800, maxHeight: .infinity)
                                .padding()
                                .border(AppColor.main, width: 5)
                                .padding()
                        }
                        }
                    }
            }
        }
    }

