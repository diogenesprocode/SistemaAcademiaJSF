/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.inject.Named;
import javax.enterprise.context.Dependent;

/**
 *
 * @author Diogenes
 */
@Named(value = "pagina")
@Dependent
public class pagina {

    /**
     * Creates a new instance of pagina
     */
    private String pagina;
    public pagina() {
    }

    public String getPagina() {
        return pagina;
    }

    public void setPagina(String pagina) {
        this.pagina = pagina;
    }
    public void chamarPaginaEstoquer(){
    //se a pagina principa e a pagina a ser inserida estiverem no msm diretoria ai é so chamar assim
    //senao vc deve especificar o caminho ex:/WEB-INF/paginas/pagina_estoque.xhtml
        setPagina("pagina_estoque.xhtml");
    }
    public void setPagina1(){
    setPagina("pagina1.xhtml");
}
public void setPagina2(){
    setPagina("pagina2.xhtml");
}
}
