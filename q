[33mcommit 2a980e8abc6bd464551a4b3615f363ac563a4923[m[33m ([m[1;36mHEAD -> [m[1;32mstof-esp[m[33m, [m[1;31morigin/stof-esp[m[33m)[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Mon Mar 23 19:13:53 2020 +0100

    actually added ESP32 code to right folder

[33mcommit f57625d81c1550a5cb89bba465cd560211999876[m[33m ([m[1;31morigin/stof[m[33m, [m[1;32mstof[m[33m, [m[1;32morigin[m[33m)[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Mon Mar 16 21:58:09 2020 +0100

    new Platformio project and added PWM, ADC, interrupt and methods for checking reading ADC - working

[33mcommit 32ad3574ea1b3e9c3edd8d477cd2bbf3fc0f3f3e[m
Merge: d954aa8 f9940a3
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Mon Mar 16 20:06:57 2020 +0100

    resolved conflict

[33mcommit f9940a364d1ec65d41032535e108691835905364[m[33m ([m[1;32mbas[m[33m)[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Mon Mar 16 20:00:59 2020 +0100

    added platformio project

[33mcommit 7e82fa6c122c51a80dda96b95c5025b683fd2d00[m
Author: goossensbas <goossensbas@gmail.com>
Date:   Mon Mar 9 20:46:04 2020 +0100

    file tree change + Serial in main.c

[33mcommit df3b82e82f53b324b5215dcbfe42fd23d3650772[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Mon Mar 9 20:40:25 2020 +0100

    openvpn config toegevoegd

[33mcommit 6b57fc8c32d0b6c8fa907070c40e6026bd84716c[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Fri Mar 6 20:28:44 2020 +0100

    tested timer PWM with square -> no trigger above 20% duty

[33mcommit e9249b72a084a73b7cf28e3afd00d9d3d7ec1c3a[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Wed Feb 12 11:50:58 2020 +0100

    added header file for main

[33mcommit 0eb5b494084e7c37e31b7775f6e0d68b93a86e6a[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Wed Feb 12 11:40:42 2020 +0100

    added delay to launch ADC

[33mcommit 70bcfa94e1687b64d9f55fe157605c40258601b0[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Wed Feb 12 10:52:54 2020 +0100

    added check for voltage level triggered by timer of PWM, not yet tested with square wave

[33mcommit 62769f4de838327bdb2a28b771752eaff0df8cfc[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Mon Feb 10 19:48:41 2020 +0100

    frequency PWM op 1KHZ gezet door TOP waarde ICR1 aan te passen naar 0x3EBF

[33mcommit 2686b2444fb4ee236866f8e9326fc0f8604a7005[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sat Feb 1 11:55:43 2020 +0100

    fixed serial send -> return carriage

[33mcommit 549f49bed09f686fd158586da3c81c2ac29dd0dd[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sat Feb 1 11:24:05 2020 +0100

    fixed compile.bat to include object linking

[33mcommit e18228d60ac7195589b1d405e98dd0e93dd9b5a3[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sat Feb 1 11:20:22 2020 +0100

    fixed serial

[33mcommit 7f48bece26658a6d029104eb825394fc23b56aef[m
Author: Bas Goossens <goossensbas@gmail.com>
Date:   Mon Nov 11 12:29:29 2019 +0100

    fiddled with makefile

[33mcommit 2e2ffe47222fd4ff7dc82c9cd27abbd3dda900b2[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Fri Nov 1 13:49:39 2019 +0100

    adc.h en adc.c hersteld zodat opnieuw compileert: import in juiste file gezet en define uit main.c gehaald en in adc.h geplaatst

[33mcommit c832de693013d79b1fd5df273d30477776c76560[m
Author: Bas Goossens <goossensbas@gmail.com>
Date:   Fri Nov 1 11:19:09 2019 +0100

    fiddled with header files

[33mcommit 34fba60e04c3730564f03e1f978e9f91b987998c[m
Author: Bas Goossens <goossensbas@gmail.com>
Date:   Fri Nov 1 11:06:00 2019 +0100

    pwm ok, adc OK

[33mcommit e055ccc6992d001be0d6c0b1653fd7221822e507[m
Author: Bas Goossens <goossensbas@gmail.com>
Date:   Fri Nov 1 11:04:42 2019 +0100

    pwm ok, adc OK

[33mcommit e8e590b8754a09c64b5182746e7cf3a4ddc7125e[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Wed Oct 30 21:14:27 2019 +0100

    makefile gemaakt, adc en pwm files gemaakt

[33mcommit 72023e853ccaa3fc422ed877fc57f43b943acd19[m
Merge: 96f7d3d 8a78f0b
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Wed Oct 30 20:24:01 2019 +0100

    Merge branch 'bas' of ssh://192.168.0.10:/home/git/projects/eindwerk into bas

[33mcommit 8a78f0be08fe11eea58671b9a5308a163f306b86[m
Author: Bas Goossens <goossensbas@gmail.com>
Date:   Tue Oct 29 21:13:29 2019 +0100

    pwm ok, adc will not fire

[33mcommit d954aa85ac219ed076ca919490092cb15d213d6d[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sun Oct 20 14:52:24 2019 +0200

    compile_flash script toegevoegd

[33mcommit 96f7d3d88222e9317aab689efe846b3db9fd703f[m
Merge: 7e65b90 027e644
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sun Oct 20 14:46:44 2019 +0200

    Merge branch 'bas' of ssh://192.168.0.10:/home/git/projects/eindwerk into bas

[33mcommit 027e6441c91d9e5027a343c875eed5a17185380b[m
Author: Bas Goossens <goossensbas@gmail.com>
Date:   Tue Oct 15 22:13:27 2019 +0200

    working on freqcount, pwm finished

[33mcommit 7e65b90c08c511528c8381517f4554876567f95d[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sun Sep 29 16:12:49 2019 +0200

    eindwerk verslag toegevoegd

[33mcommit 0283ef8e3ab177a9d56d989a06c93052e0fcfb15[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sat Sep 28 14:51:15 2019 +0200

    hello_world code weggehaald, i2c file toegevoegd en eerste test gelogd om te kijken of deze correct mee wordt genomen in build

[33mcommit 635d7039d4e27df8f72b7ec2d1e7a9eb76a3b94a[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sat Sep 28 14:12:52 2019 +0200

    Hello World voorbeeld van ESP32 toegevoegd als startpunt

[33mcommit 8a3ad1cfb1239f7b6a37af4e09bf4e4947389463[m
Author: Bas Goossens <goossensbas@gmail.com>
Date:   Sat Sep 28 12:58:29 2019 +0200

    first try

[33mcommit f4315aa15ea343ff23add438d7cf67e7a3d69bf1[m
Author: gungnir <griever_lionheart89@hotmail.com>
Date:   Sun Sep 22 13:32:05 2019 +0200

    initial commit
