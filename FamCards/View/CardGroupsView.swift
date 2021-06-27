//
//  Cards.swift
//  FamCards
//
//  Created by Garima Bothra on 26/06/21.
//

import SwiftUI

struct CardGroupsView: View {
    @ObservedObject var viewModel: GroupsViewModel
    
    init(viewModel: GroupsViewModel){
        self.viewModel = viewModel
    }
    
    var body: some View {
        GeometryReader() { geometry in
            NavigationView {
                ScrollView() {
                    VStack(spacing: 10) {
                        Spacer()
                        if let cardViewModels = viewModel.dataSource?.cardGroups {
            ForEach((0..<cardViewModels.count), id: \.self){
                let design = cardViewModels[$0].designType
                CardRow(viewModel: cardViewModels[$0])
                    .frame(height: geometry.size.height * CGFloat(getHeight(designType: design)))
                }
          //  .frame(maxHeight: .infinity)
            } else {
                Text("Card Groups Nil")
            }
                Spacer()
        }
                    .padding()
            .background(Color(hexCode: "#F2F3F3"))
                    .frame(width: geometry.size.width,height: geometry.size.height)
            .onAppear(perform: viewModel.refresh)
        }
        }
        }
     //   GeometryReader { geometry in
     //   VStack() {
//        List(content: content)
//            .onAppear(perform: viewModel.refresh)
//            .listStyle(GroupedListStyle())
            
//            HC1View(titleText: "Small display card", subheadingText: "Arya Stark", imageURL: "https://westeros-staging.s3.amazonaws.com/media/images/generic/e154e9ddcb8a42ff94a926cb2d7927d8.png")
//                .padding()
//                .background(Color(hexCode: "#F2F3F3"))
//                .cardStyle()
//                .frame(height: geometry.size.height * 0.1)
//            Spacer()
//            HC6View(titleText: "Arya", subheadingText: "", imageURL: "oops no", linkURL: "lmao")
//                .padding()
//                .background(Color(hexCode: "#F2F3F3"))
//                .cardStyle()
//                .frame(height: geometry.size.height * 0.1)
//            Spacer()
//            HC5View(imageURL: "https://westeros-staging.s3.amazonaws.com/media/images/generic/75584c0f3a454326b781dc59466b0b54.png")
//                .cardStyle()
//                .frame(height: geometry.size.height * 0.15)
//            Spacer()
//            ActionButtonView(text: "Action", bgColor: Color.black, textColor: .white, url: "something")
//           // Spacer(minLength: 50)
//        }
//        .padding()
    }
    }

//private extension CardsView {
//  func content() -> some View {
//    if let viewModel = viewModel.dataSource {
//      return AnyView(details(for: viewModel))
//    } else {
//      return AnyView(loading)
//    }
//  }
//
//  func details(for viewModel: CardViewModel) -> some View {
//    CardRow(viewModel: viewModel)
//  }
//
//  var loading: some View {
//    Text("Loading \(viewModel.dataSource.debugDescription)")
//      .foregroundColor(.gray)
//  }
//}
