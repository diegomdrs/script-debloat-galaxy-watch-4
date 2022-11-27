# script-debloat-galaxy-watch-4

## Conectando o adb

~~~
adb connect <IP>
~~~

## Reinstalando pacote desinstalados

~~~
adb shell cmd package install-existing com.samsung.android.bixby.agent
~~~

## Listando processos

~~~
adb shell ps -A
~~~

## Listando apps

~~~
adb shell pm list packages|grep com.samsung
adb shell pm list packages|grep watch.watchface
~~~

## Desinstalando os bloatwares

Desinstalando os pacotes:

~~~
./debloat.sh uninstall
~~~

Reeinstalando os pacotes:

~~~
./debloat.sh install
~~~

## Referências

- [forum.xda-developers.com/t/debloat-galaxy-watch-4.4324147](https://forum.xda-developers.com/t/debloat-galaxy-watch-4.4324147/)
- [www.droidwin.com/how-to-debloat-remove-bloatware-from-galaxy-watch-4/#STEP_4_Get_a_List_of_All_Installed_Apps_in_Galaxy_Watch_4](www.droidwin.com/how-to-debloat-remove-bloatware-from-galaxy-watch-4/#STEP_4_Get_a_List_of_All_Installed_Apps_in_Galaxy_Watch_4)
- [techwiser.com/ways-to-unpair-or-disconnect-samsung-galaxy-watch-from-phone](https://techwiser.com/ways-to-unpair-or-disconnect-samsung-galaxy-watch-from-phone/)
