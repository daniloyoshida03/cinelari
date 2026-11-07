# CineLari — publicação gratuita

1. Crie um projeto gratuito em https://supabase.com/dashboard (preferencialmente dedicado ao CineLari).
2. No projeto, abra **SQL Editor**, cole todo o conteúdo de `supabase.sql` e execute.
3. Em **Project Settings → API** (ou **Connect / API Keys**, conforme a interface), copie a **Project URL** e a chave **publishable** ou **anon public**. **Nunca** use a `service_role` nem uma secret key no site.
4. Edite `config.js` e substitua os dois valores de exemplo pelos valores do projeto.
5. Acesse https://vercel.com/new e importe a pasta do site por um repositório GitHub (envie `index.html` e `config.js` para o repositório). Escolha **Other** / sem framework e sem build command, com diretório raiz contendo `index.html`. Publique.
6. Em Vercel → Project → Settings → Domains, tente `cinelari.vercel.app`. Se já estiver ocupado, escolha outro subdomínio gratuito.
7. Abra o endereço no celular de cada um e teste adicionar e marcar um filme; a lista atualiza automaticamente a cada 12 segundos e quando a página volta ao foco.

**Atenção:** esta configuração permite que qualquer pessoa com acesso ao site (e à API pública) leia, adicione, altere ou apague filmes, sem login. Não armazene dados pessoais/sensíveis. Para restringir edições no futuro, será necessário mudar as políticas de acesso.

**Filmes antigos:** se já tiverem filmes salvos apenas no navegador na versão anterior, eles não são transferidos automaticamente para o banco compartilhado.

**Teste local:** sem configurar `config.js`, o site continua funcionando em modo local, com dados apenas no navegador.
