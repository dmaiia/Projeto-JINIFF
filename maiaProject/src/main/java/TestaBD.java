
import Entidade.Aluno;
import Hibernate.AlunoDAO;
import Hibernate.HibernateUtil;
import java.util.List;
import org.hibernate.Session;

public class TestaBD {

    public static void main(String args[]) {
        System.out.println("Teste: ");
        Session sessao = HibernateUtil.abrirSessaoComBD();
        AlunoDAO listar = new AlunoDAO();
        List<Aluno> alunos = listar.listaAluno();
        

        for (Aluno aluno : alunos) {

            System.out.println("Nome: " + aluno.getNome());
            System.out.println("Sobrenome: " + aluno.getSobrenome());
            System.out.println("Data de nascimento: " + aluno.getDataNascimento());
            System.out.println("Sexo: " + aluno.getSexo());
            System.out.println("Numero: " + aluno.getNumero());
            System.out.println("Curso: " + aluno.getCurso());
            System.out.println("Ano: " + aluno.getAno());
            System.out.println("Email: " + aluno.getEmail());
            System.out.println("Senha: " + aluno.getSenha());

        }
    }
}
                          