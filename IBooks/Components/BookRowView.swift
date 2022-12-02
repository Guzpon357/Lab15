//
//  BookRowView.swift
//  IBooks
//
//  Created by MAC40 on 2/12/22.
//

import SwiftUI

struct BookRowView: View {
    var imagenofound = "https://t4.ftcdn.net/jpg/02/51/95/53/360_F_251955356_FAQH0U1y1TZw3ZcdPGybwUkH90a3VAhb.jpg"
    var book: Item
    var body: some View {
        HStack{
            AsyncImage(url : URL(string: book.volumeInfo.imageLinks?.smallThumbnail ?? imagenofound)){ image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 80, height: 120)
            VStack(alignment: .leading){
                Text("Autor: Effer Soto")
                    .font(.title3)
                    .fontWeight(.bold)
                Text(String(book.volumeInfo.ratingsCount ?? 0))
                Spacer()
                Text("Publisher: \(book.volumeInfo.publishedDate ?? "no date")")
            }
        }
    }
}
