//
//  FiltroViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class FiltroViewController: UIViewController {
    
    //MARK: - IBOUTLETS

    @IBOutlet weak var filtroSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var filmesFiltroCollectionView: UICollectionView!
    
    let serviceFilmes = ServiceFilmes()
    var filmes18: [Filme] = []
    var filmesKids: [Filme] = []
    var filmesFiltrados: [Filme] = []
    //MARK: - Override funcs

    override func viewDidLoad() {
        super.viewDidLoad()
        filmesFiltroCollectionView.delegate = self
        filmesFiltroCollectionView.dataSource = self
        
        popularListasDeFilmes18EKids()
        popularFilmesFiltrados()
    }
    //MARK: - Funções Privadas
    private func popularFilmesFiltrados(){
        filmesFiltrados = filmes18
    }
    
    private func popularListasDeFilmes18EKids(){
        let filmes = serviceFilmes.trazListaDeFilmes()
        
        for filme in filmes {
            if filme.classificacaoIndicativa == 18{
                filmes18.append(filme)
            } else if filme.classificacaoIndicativa <= 14{
                filmesKids.append(filme)
            }
        }
    }
    //MARK: - ACTIONS

    @IBAction func alterarSeguimento(_ sender: UISegmentedControl) {
        
        let indiceDoSegmented = sender.selectedSegmentIndex
        
        switch indiceDoSegmented {
        case 0:
            filmesFiltrados = filmes18
        case 1:
            filmesFiltrados = filmesKids
        default:
            break
        }
        filmesFiltroCollectionView.reloadData()
    }
    
    
}
//MARK: - CollectionView DataSource e Delegate
extension FiltroViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        filmesFiltrados.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let filme = filmesFiltrados[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmeCell", for: indexPath) as? FilmesFiltroCollectionViewCell
        
        cell?.cellConfig(filme)
        
        return cell ?? UICollectionViewCell()
    }
}
