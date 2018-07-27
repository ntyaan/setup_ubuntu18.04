# setup ubuntu18.04

## まずinstallするもの

```
~$ sudo add-apt-repository ppa:kelleyk/emacs; sudo apt update; sudo apt upgrade ; sudo apt install git emacs26 vim texlive-full fontforge gnuplot libboost-dev aspell ssh libfcgi-dev spawn-fcgi nginx cifs-utils make gcc g++ doxygen graphviz python-pip emacs-mozc ; echo "lang en_US" >> ~/.aspell.conf
```

```
~$ sudo apt --fix-broken install

-common_25.3~1.gite0284ab-kk1+18.04_all.deb の処理中にエラーが発生しました (--unpack):
 '/usr/share/emacs/site-lisp/subdirs.el' を上書きしようとしています。これはパッケージ emacs26-common 26.1~1.git07f8f9b-kk1+18.04 にも存在します
dpkg-deb: エラー: ペースト subprocess was killed by signal (Broken pipe)
処理中にエラーが発生しました:
 /var/cache/apt/archives/emacs25-common_25.3~1.gite0284ab-kk1+18.04_all.deb
E: Sub-process /usr/bin/dpkg returned an error code (1)
```
こんなエラーが出たらrm /var/cache/apt/archives/emacs25-common_25.3~1.gite0284ab-kk1+18.04_all.deb

### virtualbox PC間でscp

```
~$ scp -P 設定したport[2222] -r 送信ファイル 受信ファイル(user[virtualbox]@172.xxx.xxx.xxx:/home/user/)
```

### mount cifs でサーバののファイルをマウント

```
~$ mkdir MyVolume
~$ sudo mount -t cifs //xxx.ac.jp/user ~/MyVolume/ -o username=user,password=xxxxxxxx,vers=2.1
```

### virtualbox 共有フォルダ

```
~$ mkdir share
~$ chmod 777 share
~$ sudo mount -t share_k share
```

## haroopad

markdownテキストエディタ

[http://pad.haroopress.com/user.html](http://pad.haroopress.com/user.html)からLinux Debian Package(64bit)をダウンロード

```
~$ cd ダウンロード
~/ダウンロード$ sudo dpkg -i haroopad-v0.xx.x-x64.deb
```

これだけでharoopadを開こうとするとubuntu18.04だとlibgconf-2.so.4: cannot open ...と言われるので

[https://www.ubuntuupdates.org/package/core/bionic/universe/base/libgconf-2-4](https://www.ubuntuupdates.org/package/core/bionic/universe/base/libgconf-2-4)から"libgconf-2-4" 64bit deb packageをダウンロード

```
~/ダウンロード$ sudo dpkg -i libgconf-2-4_x.x.x-4ubuntu1_amd64.deb 
~/ダウンロード$ sudo apt --fix-broken install
```

## Ricty

プログラミング用フォント

[http://www.rs.tus.ac.jp/yyusa/ricty.html](http://www.rs.tus.ac.jp/yyusa/ricty.html)

ttfファイルを右クリック，別のアプリケーションで開く，Fonts，選択，インストール