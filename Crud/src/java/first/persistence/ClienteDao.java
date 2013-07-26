package first.persistence;

import first.model.Cliente;
import java.util.ArrayList;
import java.util.List;

public class ClienteDao extends Dao {

    public void cadastrar(Cliente c) throws Exception {
        OpenDatabase();
        String SQL = "INSERT INTO tbl_cliente VALUES(null,?,?,?,?)";
        pstmt = con.prepareStatement(SQL);
        pstmt.setString(1, c.getNome());
        pstmt.setString(2, c.getTelefone());
        pstmt.setString(3, c.getEmail());
        pstmt.setString(4, c.getSite());
        pstmt.execute();
        CloseDatabase();
    }

    public Cliente buscaporId(Integer id) throws Exception {
        OpenDatabase();
        String SQL = "SELECT * FROM tbl_cliente WHERE cod_cliente=?";
        pstmt = con.prepareStatement(SQL);
        pstmt.setInt(1, id);
        rs = pstmt.executeQuery();
        Cliente c = new Cliente();
        if (rs.next()) 
            c.setCod_cliente(rs.getInt("cod_cliente"));
            c.setNome(rs.getString("nome"));
            c.setTelefone(rs.getString("telefone"));
            c.setEmail(rs.getString("email"));
            c.setSite(rs.getString("site"));
        return c;
    }

    public void delete(Cliente c) throws Exception {
        OpenDatabase();
        String SQL = "DELETE FROM tbl_cliente WHERE cod_cliente=?";
        pstmt = con.prepareStatement(SQL);
        pstmt.setInt(1, c.getCod_cliente());
        pstmt.execute();
    }

    public List<Cliente> ListarClientes() throws Exception {
        OpenDatabase();
        String SQL = "SELECT * FROM tbl_cliente";
        pstmt = con.prepareStatement(SQL);
        rs = pstmt.executeQuery();
        Cliente c = null;
        List<Cliente> listaClientes = new ArrayList<Cliente>();
        while (rs.next()) {
            c = new Cliente();
            c.setCod_cliente(rs.getInt("cod_cliente"));
            c.setNome(rs.getString("nome"));
            c.setTelefone(rs.getString("telefone"));
            c.setEmail(rs.getString("email"));
            c.setSite(rs.getString("site"));
            listaClientes.add(c);
        }
        CloseDatabase();
        return listaClientes;
    }

    public void update(Cliente c) throws Exception {
        OpenDatabase();
        String SQL = "UPDATE tbl_cliente set nome=?,telefone=?"
                + ",email=?,site=? WHERE cod_cliente=?";
        pstmt = con.prepareStatement(SQL);
        
        pstmt.setString(1, c.getNome());
        pstmt.setString(2, c.getTelefone());
        pstmt.setString(3, c.getEmail());
        pstmt.setString(4, c.getSite());
        pstmt.setInt(5, c.getCod_cliente());
        pstmt.executeUpdate();
    }
}
