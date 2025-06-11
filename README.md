# Apprendimento auto-supervisionato per il monitoraggio personale nei disturbi dell'umore

Ambiente Dockerizzato per riprodurre i risultati dello studio:  
**“Wearable Data From Subjects Playing Super Mario…”**  
Pubblicato su *JMIR mHealth and uHealth*, [leggi l’articolo](https://mhealth.jmir.org/2024/1/e55094)  
Repository originale: [april-tools/e4selflearning](https://github.com/april-tools/e4selflearning)

## Panoramica

Questo progetto esegue modelli di apprendimento auto-supervisionato su dati da sensori indossabili raccolti durante attività quotidiane (es. videogioco, esami, esercizio fisico) per rilevare episodi acuti di disturbo dell'umore.

## Prerequisiti

- Docker ([Guida Linux](https://docs.docker.com/engine/install/), [Guida Windows](https://docs.docker.com/desktop/install/windows-install/))
- Dati utilizzati per l'apprendimento, disponibili sotto forma di volumi Docker, scaricabili da [questo link](https://unibari-my.sharepoint.com/:u:/g/personal/n_dalessandro9_studenti_uniba_it/EZPeKX5a34pEm33BtktYxR8BHd43tJfSUsheqao2c0YcXg?e=YPckjx)

---


## Setup Volumi Docker

<<<<<<< HEAD
=======
I dati utlizzati per il seguente progetto, sotto forma di volumi docker, sono disponibili [qui](https://unibari-my.sharepoint.com/:u:/g/personal/n_dalessandro9_studenti_uniba_it/EZPeKX5a34pEm33BtktYxR8BHd43tJfSUsheqao2c0YcXg?e=YPckjx)

>>>>>>> 85bfd37323d201bd25b086dded4f9eda7d73b185
- Eseguire il file di setup a seconda del sistema operativo utilizzato

Linux:

```bash
  sh setup_linux.sh
  ```

Windows:

```bash
  setup_windows.cmd
  ```


## Installazione 

- Creare una copia locale del repository tramite git

```bash
  git clone https://github.com/Gloxiniah/e4slevosoftware
  ```

- Entrare nella directory appena clonata (sostituire /path/to/e4slevosoftware con il percorso del progetto)

```bash
  cd /path/to/e4slevosoftware
  ```

- Costruire l'immagine finale a partire dal Dockerfile tramite docker

```bash
  docker build -t e4slevosoftware .
  ```

- Avviare il container montando i volumi creati in precedenza:

```bash
<<<<<<< HEAD
  docker run -d \
  -v data_volume:/app/data \
  -v runs_volume:/app/runs \
  -v models_volume:/app/models \
  --name e4slcontainer \
  --shm-size=8g \
  e4slevosoftware
=======
  docker run -d -v data_volume:/app/data -v runs_volume:/app/runs -v models_volume:/app/models --name e4slcontainer --shm-size=8g e4slevosoftware
>>>>>>> 85bfd37323d201bd25b086dded4f9eda7d73b185
  ```







