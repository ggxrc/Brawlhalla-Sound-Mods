# Brawlhalla Sound Mods

> **Nota:** A partir de agora, todos os áudios presentes na pasta `sfx and memes` fazem parte exclusivamente da branch **Only Audios** e foram removidos da branch principal. Caso queira acessar ou contribuir com esses áudios, utilize a branch Only Audios.

Este repositório contém ferramentas e recursos para modificar sons no jogo Brawlhalla. O projet## Notas Importantes
- **Sempre faça backup** dos arquivos `.bnk` originais antes de substituí-los
- A numeração nos nomes dos arquivos (ex: 01, 03, 04) deve corresponder **exatamente** ao nome do arquivo de som no jogo
- O ID serve apenas para facilitar a busca do som correto
- É **crítico usar o número exato** do arquivo ao fazer substituições; caso contrário, o arquivo .bnk pode ser corrompidormite extrair, editar e substituir efeitos sonoros do jogo, personalizando a experiência auditiva durante as partidas. Mais áudios poderão ser adicionados no futuro conforme o projeto evolui.

## Estrutura do Repositório

### 📁 Audacity Sounds
Contém os arquivos de áudio que eu editei no Audacity, organizados por categoria de arma. Esta pasta serve como **exemplo de organização** para que você entenda como estruturar seus próprios arquivos:

- **desarmado/** - Sons para ataques desarmados
- **foice/** - Sons para a arma foice
- **lança/** - Sons para a arma lança
- **luva/** - Sons para a arma luva (gauntlets)
- **marreta/** - Sons para a arma marreta/martelo
- **ui/** - Sons da interface do usuário
- mais pastas e áudios serão adicionadas com o tempo

A numeração dos arquivos (ex: `04.wav`, `07.wav`) corresponde ao nome exato do arquivo de som que será substituído nos arquivos `.bnk` do jogo. Os IDs servem apenas para facilitar a busca desses sons. **Importante:** Esta pasta é apenas para referência e não é necessário colocar seus áudios aqui - você deve criar e manter seus próprios arquivos de áudio em seu computador.

### 📁 Modified Soundbanks
Armazena os arquivos `.bnk` que já foram modificados e estão prontos para uso no jogo:

- `SPC_Sentai.bnk` - Soundbank do Red Raptor
- `WEP_Fists.bnk` - Soundbank para luvas
- `WEP_Hammer.bnk` - Soundbank para marreta
- `WEP_Scythe.bnk` - Soundbank para foice
- `WEP_Spear.bnk` - Soundbank para lança
- `WEP_Unarmed.bnk` - Soundbank para ataques desarmados e arremessáveis

### 📁 sfx and memes
Esta pasta contém uma coleção de efeitos sonoros e memes que foram usados para criar as modificações de áudio:

- **UI/** - Efeitos sonoros para interface do usuário, incluindo sons de KO
- **Unarmed/** - Sons meme para ataques desarmados
- **Weapons/** - Sons organizados por tipo de arma (Fists, Hammer, Scythe, Spear)

**Se você quiser contribuir com novos efeitos sonoros ou memes para o repositório, esta é a pasta certa para enviar suas contribuições!** Estes arquivos servem como recursos para todos criarem suas próprias modificações.

### 📁 Sounds ID
Contém informações sobre os IDs de som usados no jogo:

- `SoundbanksInfo.xml` - XML contendo todos os IDs de áudio do jogo
- `impacts brawl weapons.txt` - Lista organizada dos IDs de impacto para cada arma
- `ui brawl.txt` - Lista de IDs para sons da interface do usuário

Os arquivos `.txt` são guias rápidos para encontrar os IDs sem precisar pesquisar no arquivo XML completo.

### 📁 Wwise Unpacker
Ferramenta para extrair e decodificar os arquivos de som do jogo:

- **Game Files/** - Local para colocar os arquivos `.bnk` extraídos do jogo
- **MP3/** - Diretório onde ficam os arquivos extraídos em formato MP3
- **OGG/** - Diretório onde ficam os arquivos extraídos em formato OGG
- **Tools/** - Utilitários para trabalhar com arquivos Wwise
  - `bnkextr.exe` - Extrai conteúdo de arquivos `.bnk`
  - `ww2ogg.exe` - Converte arquivos Wwise para formato OGG
  - `revorb.exe` - Otimiza arquivos OGG após conversão
  - `ffmpeg.exe` - Ferramenta para conversão de áudio entre formatos
  - `quickbms.exe` - Ferramenta para extração de arquivos
  - `wwiseutil-gui.exe` - Interface gráfica para trabalhar com arquivos Wwise
- `Unpack to MP3.bat` - Script para extrair e converter sons para MP3
- `Unpack to OGG.bat` - Script para extrair sons em formato OGG (melhor qualidade)

## Como Usar

### Passo a Passo para Modificação de Sons

#### 1. Preparação
- [Baixe o Wwise launcher](https://www.audiokinetic.com/download/) e instale a versão **2022.1.18.8567**
- Faça backup dos arquivos `.bnk` originais do jogo antes de qualquer modificação
- Localize os arquivos `.bnk` no diretório de instalação do Brawlhalla

#### 2. Identificando Sons para Substituição
- Consulte os arquivos na pasta `Sounds ID/` para encontrar os IDs dos sons
- Use os arquivos de referência organizados por tipo:
  - `impacts brawl weapons.txt` → IDs de impacto para cada arma
  - `ui brawl.txt` → IDs para sons da interface
- Exemplo: Os IDs de impacto fraco para luva (fists) são 02, 12, 14, 20, 25

#### 3. Extraindo Sons Originais (Opcional)
- Copie os arquivos `.bnk` desejados para a pasta `Wwise Unpacker/Game Files`
- Para visualizar/ouvir os sons:
  - Execute `wwiseutil-gui.exe` para abrir e visualizar o conteúdo do soundbank
  - Exporte os áudios `.WEM` para a pasta `Wwise Unpacker/Game Files`
  - Use `ConvertAndOrganize.bat` para converter os arquivos `.WEM` para `.OGG`
  - Os sons convertidos estarão disponíveis na pasta `OGG/`

#### 4. Criando Sons Personalizados
- Crie ou edite os sons no Audacity ou outro editor de áudio
- Nomeie os arquivos conforme o número exato do arquivo de som a ser substituído (ex: `04.wav`)
- O número do arquivo (ex: 01, 03, 04) deve corresponder exatamente ao nome do áudio no jogo, não ao ID
- Salve os arquivos em uma pasta organizada em seu próprio computador
- Os arquivos devem estar no formato WAV para compatibilidade
- **Importante:** Não é necessário colocar seus arquivos na pasta `Audacity Sounds/` do repositório; esta pasta serve apenas como exemplo de organização

#### 5. Preparando os Áudios com Wwise
- Se você já tem os áudios WAV prontos, precisa convertê-los para o formato WEM:
  1. [Baixe e instale o Wwise](https://www.audiokinetic.com/download/) versão **2022.1.18.8567**
  2. Abra o Wwise e crie um novo projeto (ou use um existente)
  3. Vá em **Project → Project Settings → Source Settings** e selecione **Vorbis Quality High**
  4. Vá em **Project → Import Audio Files...** e importe seus arquivos .wav
  5. Após a importação, vá em **Project → Convert All Audio Files...**
  6. Os arquivos convertidos (.wem) estarão na pasta:
     `C:\Users\SeuUsuario\Documents\WwiseProjects\NomeDoProjeto\.cache\Windows\SFX`

#### 6. Modificando os Soundbanks
- Use `wwiseutil-gui.exe` na pasta `Tools/` para abrir o arquivo `.bnk` original
- No programa:
  1. Localize o som correto usando o ID como referência para busca
  2. O nome do arquivo de som (número como 01, 03, 04) é o que deve corresponder exatamente
  3. Clique na linha do áudio → **Replace**
  4. Navegue até o diretório que contém seus arquivos .wem convertidos
  5. Selecione o arquivo .wem correspondente e confirme a substituição
- Salve o arquivo `.bnk` modificado em seu computador ou na pasta `Modified Soundbanks/`

#### 7. Implementação e Teste
- Faça backup do arquivo .bnk original do jogo
- Substitua o arquivo `.bnk` original no diretório do jogo pelo seu arquivo modificado
- Inicie o jogo e teste as modificações de áudio
- Se o som ficar mudo durante o jogo, significa que houve algum problema com a substituição
  (provavelmente ID errado ou formato incompatível) e você precisará refazer o processo

## Notas Importantes
- **Sempre faça backup** dos arquivos `.bnk` originais antes de substituí-los
- A numeração nos nomes dos arquivos corresponde **exatamente** aos dos sons no jogo
- É **crítico usar o nome correto** do som ao fazer substituições; caso contrário, o arquivo .bnk pode ser corrompido
- Se os sons ficarem mudos no jogo após a modificação, provavelmente houve um erro na substituição (ID incorreto ou formato incompatível)
- Certifique-se de configurar o Wwise para usar **Vorbis Quality High** nas configurações do projeto
- Para melhor qualidade, extraia os sons usando o formato OGG
- Se houver conflitos de nome durante a extração, escolha a opção "rename" (r) quando solicitado
- Sempre teste suas modificações antes de compartilhá-las no repositório

## Contribuições
Todo mundo pode contribuir com áudios para este projeto! Se você tiver sons personalizados que gostaria de compartilhar:

1. Para efeitos sonoros e memes que possam ser úteis para outros: 
   - Adicione-os à pasta `sfx and memes/` na categoria apropriada
   - Estes servirão como recursos para a comunidade

2. Para soundbanks (.bnk) já modificados e funcionais:
   - Organize-os e adicione à pasta `Modified Soundbanks/`
   - Indique qual arma/personagem foi modificado

3. Para IDs de som que você descobriu:
   - Contribua adicionando à pasta `Sounds ID/` para ajudar outros a encontrar sons específicos

Envie uma pull request ou entre em contato para adicionar suas contribuições. Quanto mais pessoas contribuírem, mais diversificada será nossa biblioteca de sons.

**Lembre-se:** Mantenha seus arquivos de áudio pessoais em seu próprio computador. A pasta `Audacity Sounds/` serve apenas como referência de organização.

## Licença
Este projeto é para uso pessoal e não comercial. Todos os direitos sobre Brawlhalla pertencem à Blue Mammoth Games e Ubisoft.
