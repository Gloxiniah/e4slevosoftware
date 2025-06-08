# Self-supervised learning for personal sensing in mood disorders

Il progetto consiste nella conteinerizzazione del codice utilizzato per l'articolo [“Wearable Data From Subjects Playing Super Mario, Taking University Exams, or Performing Physical Exercise Help Detect Acute Mood Disorder Episodes via Self‑Supervised Learning: Prospective, Exploratory, Observational Study”](https://mhealth.jmir.org/2024/1/e55094) presente nel seguente [repository](https://github.com/april-tools/e4selflearning).



## Setup Volumi Docker

I dati utlizzati per il seguente progetto, sotto forma di volumi docker, sono disponibili [qui](https://unibari-my.sharepoint.com/:u:/g/personal/n_dalessandro9_studenti_uniba_it/EXizrflbzhxBlpMoFTb6usYBGryGbdnTTrdph0M1Tz_SOw?e=LB1AV4)

- Eseguire il file di setup a seconda del sistema operativo utilizzato

Linux:

```bash
  sh setup_linux.sh
  ```

Windows:

```bash
  setup_windows.cmd
  ```


## Setup ()

- Creare una copia locale del repository tramite git

```bash
  git clone https://github.com/Gloxiniah/e4slevosoftware
  ```

- Entrare nella directory appena clonata (sostituire /path/to/e4slevosoftware con il percorso del progetto)

```bash
  cd /path/to/e4slevosoftware
  ```

- Costruzione dell'immagine a partire dal Dockerfile tramite docker

```bash
  docker build -t e4slevosoftware .
  ```

- Scaricare 

- Eseguire l'applicativo in un container con i volumi creati in precedenza

```bash
  docker run -d \
  -v data_volume:/app/data \
  -v runs_volume:/app/runs \
  -v models_volume:/app/models \
  --name e4slcontainer \
  e4slevosoftware
  ```







