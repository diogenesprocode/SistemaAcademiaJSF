/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
 
@ManagedBean
public class MenuView {
    private String pagina; 

//Get e set da pagina
    public String getPagina() {
        return pagina;
    }

    public void setPagina(String pagina) {
        this.pagina = pagina;
    }
    
//Métodos dos botões
    public void cadClientes() {
        setPagina("cadastrarCliente.xhtml");
        addMessage("Success", "Data saved");
    }
     
    public void consultClientes() {
        addMessage("Success", "Data updated");
    }
     
    public void cadModalidade() {
        addMessage("Success", "Data deleted");
    }
    
    public void consultModalidade(){
        addMessage("Success", "Data loaded");
    }
     
    public void addMessage(String summary, String detail) {
        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, summary, detail);
        FacesContext.getCurrentInstance().addMessage(null, message);
    }
    
}
