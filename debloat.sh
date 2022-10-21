execute() {
    # Bixby
    adb shell ${ACTION} com.samsung.android.bixby.agent
    adb shell ${ACTION} com.samsung.android.bixby.wakeup

    # Samsung Pay
    adb shell ${ACTION} com.samsung.android.samsungpay.gear

    # Maps
    adb shell ${ACTION} com.google.android.apps.maps

    # Gallery
    adb shell ${ACTION} com.samsung.android.gallery.watch

    # Calendar
    adb shell ${ACTION} com.samsung.android.calendar
    adb shell ${ACTION} com.android.providers.calendar

    # World Clock
    adb shell ${ACTION} com.samsung.android.watch.worldclock

    # Discador 
    # com.android.phone (não bricou, mas não sei pra que que serve)

    adb shell ${ACTION} com.android.phone
    adb shell ${ACTION} com.samsung.android.dialer

    # Reminder
    adb shell ${ACTION} com.samsung.android.app.reminder

    # Messaging
    adb shell ${ACTION} com.samsung.android.messaging
    adb shell ${ACTION} com.google.android.apps.messaging
    adb shell ${ACTION} com.android.providers.telephony

    # Alarm
    adb shell ${ACTION} com.samsung.android.watch.alarm

    # Weather
    adb shell ${ACTION} com.samsung.android.watch.weather

    # Compass
    adb shell ${ACTION} com.samsung.android.watch.compass

    # Contacts
    adb shell ${ACTION} com.samsung.wear.contacts.sync
    adb shell ${ACTION} com.samsung.android.app.contacts

    # Camera Controller
    adb shell ${ACTION} com.samsung.android.watch.cameracontroller

    # Talkback
    adb shell ${ACTION} com.google.android.marvin.talkback

    # Watchfaces
    # com.samsung.android.watch.watchface.basicclock (é o que eu uso)
    # com.samsung.sree.digital (outro que eu eu uso)
    # com.samsung.android.watch.watchface.emergency (não desabilitei)

    adb shell ${ACTION} com.samsung.android.watch.watchface.bespoke
    adb shell ${ACTION} com.samsung.android.watch.watchface.animal
    adb shell ${ACTION} com.samsung.android.watch.watchface.myphoto
    adb shell ${ACTION} com.samsung.android.watch.watchface.together
    adb shell ${ACTION} com.samsung.android.watch.watchface.large
    adb shell ${ACTION} com.samsung.android.watch.watchface.simpleclassic
    adb shell ${ACTION} com.samsung.android.watch.watchface.simplecomplication
    adb shell ${ACTION} com.samsung.android.watch.watchface.simpleanalogue
    adb shell ${ACTION} com.samsung.android.watch.watchface.analoguefont
    adb shell ${ACTION} com.samsung.android.watch.watchface.weather
    adb shell ${ACTION} com.samsung.android.watch.watchface.premiumanalog
    adb shell ${ACTION} com.samsung.android.watch.watchface.mystyle
    adb shell ${ACTION} com.samsung.android.watch.watchface.healthmodular
    adb shell ${ACTION} com.samsung.android.watch.watchface.basicdashboard
    adb shell ${ACTION} com.samsung.android.watch.watchface.livewallpaper
    adb shell ${ACTION} com.samsung.android.watch.watchface.dualwatch
    adb shell ${ACTION} com.samsung.android.watch.watchface.typography
    adb shell ${ACTION} com.samsung.android.watch.watchface.aremoji
    adb shell ${ACTION} com.samsung.android.watch.watchface.analogmodular
    adb shell ${ACTION} com.samsung.android.watch.watchface.bitmoji
    adb shell ${ACTION} com.samsung.android.watch.watchface.digitalmodular
    adb shell ${ACTION} com.samsung.android.watch.watchface.superfiction
    adb shell ${ACTION} com.samsung.android.watch.watchface.digitalfont
    adb shell ${ACTION} com.samsung.android.watch.watchface.endangeredanimal
    adb shell ${ACTION} com.samsung.android.watch.watchface.companionhelper
    adb shell ${ACTION} com.samsung.android.watch.watchface.tickingsound
    adb shell ${ACTION} com.samsung.sree.spin
    adb shell ${ACTION} com.samsung.sree.countdown
    adb shell ${ACTION} com.samsung.sree.classic

    # Samsung Global Goals
    adb shell ${ACTION} com.samsung.sree

    # Google Assistant
    adb shell ${ACTION} com.google.android.wearable.assistant

    # NFC
    # com.android.nfc

    # Video Player
    adb shell ${ACTION} com.samsung.android.video.wearable

    # Google Wallet
    adb shell ${ACTION} com.google.android.apps.walletnfcrel

    # Misc
    adb shell ${ACTION} com.microsoft.office.outlook
    adb shell ${ACTION} com.samsung.android.watch.budscontroller
    adb shell ${ACTION} com.samsung.android.wearable.music
    adb shell ${ACTION} com.samsung.android.wear.calculator
    adb shell ${ACTION} com.samsung.android.wear.voicerecorder
    adb shell ${ACTION} com.google.android.tts
    adb shell ${ACTION} com.sec.android.app.samsungapps
    adb shell ${ACTION} com.samsung.android.wear.blockednumber
}

install() {
    ACTION='cmd package install-existing'
    execute
}

uninstall() {
    ACTION='pm uninstall -k --user 0'
    execute
}

usage() {
    echo "usage: debloat.sh install/uninstall"
}

case $1 in
    install) install ;;
    uninstall) uninstall ;;
esac
