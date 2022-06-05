# Control Theory

A repository containing notes and scripts made for Control Theory basics.

## Repository structure

This repository contains:

- **Scripts**: this folder contains scripts to calculate transfer functions, Bode diagrams, phase and gain margins and more in three formats:
  
  - MathWorks MATLAB
  - Wolfram Mathematica
  - CasioBasic for the Casio ClassPad II fx-CP400 calculator

- **Lab2022**: this folder contains the MATLAB scripts used in the 2021/2022 laboratory for the course *Fondamenti di Automatica*.

Everything in this repository is in the Italian language, since the course *Fondamenti di Automatica* was in Italian.

What follows is the guide that I wrote for the installation of the software used for the laboratory.

---

# Laboratorio di Fondamenti di Automatica (A.A. 21/22)

Questa repository contiene gli script MATLAB ed i modelli OpenModelica usati nel laboratorio di **Fondamenti di Automatica** del professor [Alberto Leva](https://github.com/albertoleva), insieme ad una guida di configurazione per l'ambiente di lavoro per ciascun sistema operativo.

---

## Indice

- [Requisiti](#requisiti)
  - [Installazione di MATLAB](#installazione-di-matlab)
  - [Installazione di OpenModelica](#installazione-di-openmodelica)
    - [Nota importante](#nota-importante)
    - [Windows](#windows)
    - [Linux](#linux)
    - [macOS](#macos)
  - [Lavorare con i modelli e gli script](#lavorare-con-i-modelli-e-gli-script)

---

## Requisiti

Per il laboratorio sono necessari:

- [MATLAB 2022a](https://it.mathworks.com/products/matlab.html)
- [OpenModelica](https://www.openmodelica.org/)
- [Modelli di lavoro](https://github.com/looms-polimi/FdA_Lab) forniti dal professor Leva

---

## Installazione di MATLAB

Una licenza di MATLAB è fornita dal Politecnico.

Per installare MATLAB con la licenza studentesca fornita dall'istituto, navigare a questo [link](https://www.software.polimi.it/mathworks-matlab/) e seguire le istruzioni sulla pagina.

Una volta creato un account MathWorks con il vostro indirizzo email istituzionale, potrete scaricare l'installer di MATLAB per il vostro sistema operativo.

Dopo aver scaricato l'installer, la procedura è identica per ogni sistema operativo:

1. Immettere la mail istituzionale con cui avete creato l'account MathWorks
2. Immettere la password dell'account
3. Accettate l'accordo di licenza (dovreste anche leggerlo eh, ma sappiamo tutti come va a finire)
4. Selezionate la vostra licenza e cliccate su `Next`
5. Selezionate `Authorize this computer now` e cliccate su `Next`
6. Controllate che le informazioni immesse siano corrette e cliccate su `Next`
7. Selezionate la directory di installazione (*consiglio*: lasciate quella di default)
8. Nella lista di componenti, selezionate soltanto `MATLAB` e proseguite
9. *Facoltativo*: rimuovete la selezione dal campo `Improve MATLAB by sending user experience information to MathWorks`
10. Ricontrollate un'ultima volta le informazioni sullo schermo e premete su `Begin Install` per installare MATLAB

Alla fine del processo, MATLAB è installato e pronto ad essere usato.

---

## Installazione di OpenModelica

Dato che il processo di installazione varia a seconda del sistema operativo, questa sezione sarà divisa in tre parti. Potete saltare alla parte di vostro interesse attraverso l'indice [in cima alla pagina](#indice).

### Nota importante

**Dopo** l'installazione di OpenModelica, su *qualsiasi sistema operativo*, **alla prima apertura** apparirà un **pop-up** che vi chiederà che versione delle librerie OpenModelica utilizzare. Perché tutto funzioni, dovete selezionare la versione `3.2.3`, come specificato dal [PDF](https://github.com/looms-polimi/FdA_Lab/blob/master/FdA_courseware/FdA_Lab_operazioni_preliminari.pdf) incluso nella repository fornita dal professor Leva.

### Windows

Potete installare la versione Windows di OpenModelica e OMEdit da questo [link](https://build.openmodelica.org/omc/builds/windows/releases/1.18/1/).

- Scegliete se installare la versione 32 o 64 bit del programma (*nota*: se non sapete cosa significa, installate la 64 bit)
- Scaricate il file `OpenModelica-v.1.18.1-[32/64]bit.exe`
- Seguite le istruzioni dell'installer

Una volta terminata l'installazione, assicuratevi di selezionare le librerie OpenModelica **versione `3.2.3`** nel pop-up al primo avvio.

Fate attenzione ad utilizzare **una directory su cui abbiate sempre i permessi di lettura e scrittura**: Windows tende a caricare su OneDrive Desktop, Documenti, Foto ed altre directory che normalmente sono offline, sul disco della macchina. Un mio consiglio personale sarebbe creare una cartella apposita per il laboratorio in `C:\Users\nomeutente\`, che è sicuramente accessibile in ogni momento e senza troppi problemi.

### Linux

Una guida esaustiva su come installare OpenModelica su diverse distribuzioni di Linux è disponibile sul [sito di OpenModelica](https://www.openmodelica.org/download/download-linux).

Una volta terminata l'installazione, assicuratevi di selezionare le librerie OpenModelica **versione `3.2.3`** nel pop-up al primo avvio.

### macOS

Lo sviluppo di OpenModelica per Mac si è fermato qualche tempo fa, ma la versione `1.18` è ancora disponibile.

Nonostante il sito di OpenModelica suggerisca di installare una *Virtual Machine* con Linux e OpenModelica preinstallato, io non ho potuto farlo perché ho un Mac M1, che ha un'architettura diversa da `x86_64`.

Fortunatamente, esiste comunque una versione installabile universalmente attraverso *Rosetta II* che è disponibile [qui](https://build.openmodelica.org/omc/builds/mac/binaries/nightly/openmodelica-nightly-1.18.0~dev-109-ged8ef0a.mpkg). La procedura di installazione è semplicissima, basta seguire i passi dell'installer.

Questa versione di OpenModelica funziona perfettamente anche su Mac Intel, quindi anche gli utenti con Mac precedenti al 2020 possono installarla senza problemi. Mi sento di consigliare questo tipo di installazione, dati i problemi di performance che nascono dall'esecuzione di una Virtual Machine.

Ad ogni modo, la macchina virtuale è scaricabile [qui](https://build.openmodelica.org/omc/builds/virtual_machines/base_image/OpenModelicaUbuntu18.04.vdi). Il file è un disco virtuale *VirtualBox*, che è il software che dovrete usare per avviare la Virtual Machine. È disponibile [qui](https://www.virtualbox.org/wiki/Downloads). Per altre informazioni sull'installazione della Virtual Machine, rimando alla [sezione relativa sul sito di OpenModelica](https://www.openmodelica.org/download/virtual-machine).

Una volta terminata l'installazione, assicuratevi di selezionare le librerie OpenModelica **versione `3.2.3`** nel pop-up al primo avvio.

---

## Lavorare con i modelli e gli script

Per non avere problemi con script MATLAB e modelli di OpenModelica, suggerisco di creare una cartella apposita offline che contenga sia i file `.csv` che esporterete da OMEdit (come menzionato nelle slide del laboratorio), sia gli script MATLAB, oltre che [la libreria OpenModelica del corso](https://github.com/looms-polimi/FdA_Lab/tree/master/FdA_Lab).

Ecco la procedura che consiglio:

1. Scaricare [la repository del corso](https://github.com/looms-polimi/FdA_Lab)
2. Spostare la cartella `FdA_Lab-master` scaricata nella vostra Home directory (per sistemi basati su Unix) o nel percorso `C:\Users\nomeutente\`, specificato nella sezione [Windows](#windows) (per macchine Windows)
3. Creare una nuova cartella all'interno di `FdA_Lab-master` chiamata `Laboratori`
4. Creare una cartella per ogni sessione di laboratorio secondo lo schema `Lab[0-9]+` (sì, ho usato un'espressione regolare, era più comoda)
5. Copiare all'interno della cartella della sessione corrente i file `.csv` e gli script MATLAB

Questa procedura è soltanto quella che suggerisco io per ordine e funzonalità ed è quella rispecchiata da questa repository, ma l'importante per il funzionamento dei file in laboratorio è che:

1. L'installazione dei componenti necessari sia stata completata **come descritto sopra**
2. Script e dati di output di OpenModelica siano **nella stessa directory**
3. La cartella delle librerie fornita dal professor Leva sia in una directory **in cui avete permessi di lettura e scrittura** e che **non sia modificata in alcun modo** (non va rinominata ed i componenti al suo interno vanno lasciati intonsi)

Fatto questo, tutto dovrebbe andare secondo i piani.
