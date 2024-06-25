//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Sophia Sales on 11/04/24.
//

import SwiftUI

struct ContentView: View {
    
    private var service = HomeService()
    @State private var storesType: [StoreType] = []
    
    @State private var isLoading = true
    
    var body: some View {
        NavigationView {
            VStack (spacing: 0) {
                if isLoading {
                    ProgressView()
                } else {
                    NavigationBar()
                        .padding(.horizontal, 15)
                        .padding(.top, 10)
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(spacing: 20){
                            OrderTypeGridView()
                            CarouselTabView()
                            StoreContainerView(stores: storesType)
                        }
                    }
                }
            }
        }
        .onAppear{
            Task {
                await getStores()
            }
        }
    }
    func getStores() async {
        do{
            let result = try await service.fetchData()
            switch result{
            case .success(let stores):
                self.storesType = stores
                self.isLoading = false
            case .failure(let error):
                print(error.localizedDescription)
                self.isLoading = false
            }
            
        } catch {
            print(error.localizedDescription)
            self.isLoading = false
        }
    }
}

#Preview {
    ContentView()
        .previewLayout(.sizeThatFits)
}
