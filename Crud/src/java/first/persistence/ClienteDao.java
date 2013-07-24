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

    public void delete(Cliente c) throws Exception {
        String SQL = "DELETE tbl_cliente WHERE cod_cliente=?";
        pstmt = con.prepareStatement(SQL);
        pstmt.setInt(1, c.getCod_cliente());
        pstmt.execute();
    }

    public List<Cliente> ListarClientes() throws Exception {
        String SQL = "SELECT * FROM tbl_cliente";
        rs = pstmt.executeQuery(SQL);
        Cliente c = new Cliente();
        List<Cliente> listaClientes = new ArrayList<Cliente>();
        if (rs.next()) {
            c.setCod_cliente(rs.getInt("cod_cliente"));
            c.setNome(rs.getString("nome"));
            c.setTelefone(rs.getString("telefone"));
            c.setEmail(rs.getString("email"));
            c.setSite(rs.getString("site"));
            listaClientes.add(c);
        }
        return listaClientes;

    }

    public void update(Cliente c) throws Exception {
        String SQL = "UPDATE tbl_cliente set nome=?,set telefone=?"
                + ",set email=?,set site=? WHERE cod_cliente=?";
        con.prepareStatement(SQL);
        pstmt.executeUpdate();
    }
}
