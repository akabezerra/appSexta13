//
//  BuscaViewController.swift
//  appSexta13
//
//  Created by Bruno Bezerra on 21/05/22.
//

import UIKit

class BuscaViewController: UIViewController {
    
    
    @IBOutlet weak var filmesTableView: UITableView!
    var searchController: UISearchController?
    
    let serviceFilmes = ServiceFilmes()
    var filmesFiltrados: [Filme] = []
    var filme: Filme?
    
    //MARK: - Override Funcs

    override func viewDidLoad() {
        super.viewDidLoad()
        filmesTableView.dataSource = self
        filmesTableView.delegate = self
        
        popularTodosFilmesNaTableView()
        criarSearchBar()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard segue.identifier == "detalhesFilme" else { return }
        guard let detalhesFilme =  segue.destination as? DetalhesFilmeViewController else { return }
        
        detalhesFilme.configVc(filme)
        
        
    }
    //MARK: - Funções privadas
    
    private func popularTodosFilmesNaTableView(){
        filmesFiltrados = serviceFilmes.trazListaDeFilmes()
    }
    
    private func criarSearchBar(){
        searchController = UISearchController(searchResultsController: nil)
        searchController?.searchResultsUpdater = self
        searchController?.searchBar.sizeToFit()
        navigationItem.searchController = searchController
        
        mudarCorDoTextoDaSearchBar()
    }
    
    private func mudarCorDoTextoDaSearchBar(){
        let textFieldInsideSearchBar = searchController?.searchBar.value(forKey: "searchField") as? UITextField
        
        textFieldInsideSearchBar?.textColor = .white
    }
    
}
//MARK: - TableView data source & delegate
extension BuscaViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filmesFiltrados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme = filmesFiltrados[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmeCell") as? FilmesBuscaTableViewCell
        
        cell?.cellConfig(filme)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        filme = filmesFiltrados[indexPath.row]
        
        performSegue(withIdentifier: "detalhesFilme", sender: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
//MARK: - SearchBar Results Updating
extension BuscaViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        guard let searchText = searchController.searchBar.text else { return }
        
        let filmes = serviceFilmes.trazListaDeFilmes()
        
        // se a string colocado pelo usuario esta vazia, setar todos os filmes que possuo na variavel filmes filtrados
        if searchText.isEmpty {
            filmesFiltrados = filmes
        }else {
            // filtra os filmes baseado na string colocada pelo usuário
            filmesFiltrados = filmes.filter {filme in
                //quando o nome do filme == ao que o usario colocou na string. O caseInsensitive serve para filtrar independente de ser maiusculo ou minusculo a string
                filme.nomeFilme.range(of: searchText, options: .caseInsensitive) != nil
            }
        }
        filmesTableView.reloadData()
    }
}

