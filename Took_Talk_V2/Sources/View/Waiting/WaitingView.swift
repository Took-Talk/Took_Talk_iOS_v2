//
//  WaitingView.swift
//  Took_Talk
//
//  Created by 최시훈 on 11/21/23.
//

import SwiftUI

struct WaitingView: View {
    @StateObject private var viewModel = WaitingViewModel()
//
//    @Environment(\.presentationMode) var presentationMode
//    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
//    let newFishTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            //                        Text("남은시간: \(viewModel.timeRemaining)")
            Text("남은시간: ")
            
                .font(.headline)
                .padding()
            //
            //
            //            VStack {
            //                Text("점수: \(viewModel.score)")
            //                    .font(.headline)
            //                    .padding()
            //
            //                ZStack {
            //                    ForEach(viewModel.fishes.indices, id: \.self) { index in
            //                        Image(viewModel.fishes[index].imageName)
            //                            .resizable()
            //                            .frame(width: viewModel.fishes[index].size, height: viewModel.fishes[index].size)
            //                            .position(viewModel.fishes[index].position)
            //                            .animation(.easeInOut)
            //                            .transition(.slide)
            //                            .onAppear {
            //                                startFishMovement(index)
            //                            }
            //                    }
            //                }
            //                .onTapGesture {
            //                    self.tappedFish()
            //                }
            //            }
            //
            //            Spacer()
            //            NavigationLink(
            //                destination: ChatView(),
            //                isActive: $viewModel.isChatViewActive) {
            //                    EmptyView()
            //                }
            //            .hidden()        }
            //        .navigationBarBackButtonHidden(true)
            ////        .navigationBarItems(leading: CustomBackButton())
            //
            //        .alert(isPresented: $viewModel.showAlert) {
            ////            if isChatViewActive == true {
            ////
            ////            } else {
            //                Alert(
            //                    title: Text("게임 오버"),
            //                    message: Text("최종점수: \(viewModel.score)"),
            //                                primaryButton: .default(Text("다시하기"), action: restartGame),
            //                    secondaryButton: .default(Text("나가기"), action: {
            //                        self.presentationMode.wrappedValue.dismiss()
            //                    })
            //                )
            ////            }
            //        }
            //        .onAppear(perform: startGame)
            //        .onReceive(timer) { _ in
            //            if viewModel.timeRemaining > 0 {
            //                viewModel.timeRemaining -= 1
            //            } else {
            //                endGame()
            //            }
            //            if viewModel.timeRemaining == 8 {
            //                viewModel.routeToChatView()
            //            }
            //        }
            //        .onReceive(newFishTimer) { _ in
            //            addNewFish()
            //        }
            //        .onDisappear {
            //            if viewModel.timeRemaining == 0 {
            //                endGame()
            //            }
            //        }
            //    }
            //
            //    func startGame() {
            //        viewModel.score = 0
            //        viewModel.timeRemaining = 10
            //        resetFishPositions()
            //    }
            //
            //    func endGame() {
            ////        showAlert = true
            //    }
            //
            //    func restartGame() {
            //        startGame()
            //    }
            //
            //    func tappedFish() {
            //        if let index = viewModel.fishes.indices.randomElement() {
            //            viewModel.fishes.remove(at: index)
            //            viewModel.score += 1
            //        }
            //    }
            //    func resetFishPositions() {
            //        viewModel.fishes = [
            //            Fish(imageName: "fish", position: randomPosition(), size: 80),
            //            Fish(imageName: "fish", position: randomPosition(), size: 80),
            //            Fish(imageName: "fish", position: randomPosition(), size: 80)
            //        ]
            //    }
            //
            //    func startFishMovement(_ index: Int) {
            //        guard index >= 0 && index < viewModel.fishes.count else {
            //            return
            //        }
            //
            //        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
            //        var count = 0
            //
            //        viewModel.fishes[index].position = randomPosition() // Initial random position
            //
            //        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { timer in
            //            if count < 100 { // Move fish for 5 seconds
            //                if index >= 0 && index < viewModel.fishes.count {
            //                    viewModel.fishes[index].position = randomPosition()
            //                    count += 1
            //                }
            //            } else {
            //                timer.invalidate()
            //            }
            //        }
            //    }
            //
            //    func randomPosition() -> CGPoint {
            //        let minX: CGFloat = 50
            //        let minY: CGFloat = 100
            //        let maxX = UIScreen.main.bounds.width - 50
            //        let maxY = UIScreen.main.bounds.height - 100
            //
            //        let randomX = CGFloat.random(in: minX...maxX)
            //        let randomY = CGFloat.random(in: minY...maxY)
            //
            //        return CGPoint(x: randomX, y: randomY)
            //    }
            //
            //    func addNewFish() {
            //        let newFish = Fish(imageName: "fish", position: randomPosition(), size: 80)
            //        viewModel.fishes.append(newFish)
            //    }
        }
    }
}

#Preview {
    WaitingView()
}
