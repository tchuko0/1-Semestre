var Cpu = document.querySelectorAll('.Cpu')
var Ula = document.querySelectorAll('.Ula')
var Memoria = document.querySelectorAll('.Memoria')
var Ram = document.querySelectorAll('.Ram')
var Rom = document.querySelectorAll('.Rom')
var Registradores = document.querySelectorAll('.Registradores')
var Flash = document.querySelectorAll('.Flash')
var Cs = document.querySelectorAll('.Cs')
var QuadCore = document.querySelectorAll('.QuadCore')
var DualCore = document.querySelectorAll('.DualCore')
var I5 = document.querySelectorAll('.I5')
var I7 = document.querySelectorAll('.I7')
var AdressBus = document.querySelectorAll('.AdressBus')
var DataBus = document.querySelectorAll('.DataBus')
var Eprom = document.querySelectorAll('.Eprom')
var Dma = document.querySelectorAll('.Dma')

function verificar() {
    if (in_pergunta1.value == "cpu") {
        span_pergunta2.style.display = "block";
        in_pergunta1.style.background = "green";


        for (var i = 0; i < Cpu.length; i++) {
            var palavra = Cpu[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta1.value != "cpu") {
        in_pergunta1.style.background = "red";
    }
    if (in_pergunta2.value == "eprom") {
        span_pergunta3.style.display = "block";
        in_pergunta2.style.background = "green";

        for (var i = 0; i < Eprom.length; i++) {
            var palavra = Eprom[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta2.value != "eprom") {
        in_pergunta2.style.background = "red";
    }


    if (in_pergunta3.value == "memoria de massa") {
        span_pergunta4.style.display = "block";
        in_pergunta3.style.background = "green";

        for (var i = 0; i < Memoria.length; i++) {
            var palavra = Memoria[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta3.value != "memoria de massa") {
        in_pergunta3.style.background = "red";
    }


    if (in_pergunta4.value == "flash") {
        span_pergunta5.style.display = "block";
        in_pergunta4.style.background = "green";

        for (var i = 0; i < Flash.length; i++) {
            var palavra = Flash[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta4.value != "flash") {
        in_pergunta4.style.background = "red";
    }


    if (in_pergunta5.value == "cs") {
        span_pergunta6.style.display = "block";
        in_pergunta5.style.background = "green";

        for (var i = 0; i < Cs.length; i++) {
            var palavra = Cs[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta5.value != "cs") {
        in_pergunta5.style.background = "red";
    }


    if (in_pergunta6.value == "ram") {
        span_pergunta7.style.display = "block";
        in_pergunta6.style.background = "green";

        for (var i = 0; i < Ram.length; i++) {
            var palavra = Ram[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta6.value != "ram") {
        in_pergunta6.style.background = "red";
    }


    if (in_pergunta7.value == "registradores") {
        span_pergunta8.style.display = "block";
        in_pergunta7.style.background = "green";

        for (var i = 0; i < Registradores.length; i++) {
            var palavra = Registradores[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta7.value != "registradores") {
        in_pergunta7.style.background = "red";
    }


    if (in_pergunta8.value == "i5") {
        span_pergunta9.style.display = "block";
        in_pergunta8.style.background = "green";

        for (var i = 0; i < I5.length; i++) {
            var palavra = I5[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta8.value != "i5") {
        in_pergunta8.style.background = "red";
    }


    if (in_pergunta9.value == "i7") {
        span_pergunta10.style.display = "block";
        in_pergunta9.style.background = "green";

        for (var i = 0; i < I7.length; i++) {
            var palavra = I7[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta9.value != "i7") {
        in_pergunta9.style.background = "red";
    }


    if (in_pergunta10.value == "quad core") {
        span_pergunta11.style.display = "block";
        in_pergunta10.style.background = "green";

        for (var i = 0; i < QuadCore.length; i++) {
            var palavra = QuadCore[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta10.value != "quad core") {
        in_pergunta10.style.background = "red";
    }


    if (in_pergunta11.value == "dual core") {
        span_pergunta12.style.display = "block";
        in_pergunta11.style.background = "green";

        for (var i = 0; i < DualCore.length; i++) {
            var palavra = DualCore[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta11.value != "dual core") {
        in_pergunta11.style.background = "red";
    }

    if (in_pergunta12.value == "adress bus") {
        span_pergunta13.style.display = "block";
        in_pergunta12.style.background = "green";

        for (var i = 0; i < AdressBus.length; i++) {
            var palavra = AdressBus[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta12.value != "adress bus") {
        in_pergunta12.style.background = "red";
    }


    if (in_pergunta13.value == "rom") {
        span_pergunta14.style.display = "block";
        in_pergunta13.style.background = "green";

        for (var i = 0; i < Rom.length; i++) {
            var palavra = Rom[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta13.value != "rom") {
        in_pergunta13.style.background = "red";
    }


    if (in_pergunta14.value == "data bus") {
        span_pergunta15.style.display = "block";
        in_pergunta14.style.background = "green";

        for (var i = 0; i < DataBus.length; i++) {
            var palavra = DataBus[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta14.value != "data bus") {
        in_pergunta14.style.background = "red";
    }


    if (in_pergunta15.value == "ula") {
        span_pergunta16.style.display = "block";
        in_pergunta15.style.background = "green";

        for (var i = 0; i < Ula.length; i++) {
            var palavra = Ula[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta15.value != "ula") {
        in_pergunta15.style.background = "red";
    }


    if (in_pergunta16.value == "dma") {
        in_pergunta16.style.background = "green";
        alert('Parabéns. Você concluiu o Game!')
        for (var i = 0; i < Dma.length; i++) {
            var palavra = Dma[i];
            palavra.style.color = "black";
        }
    } else if (in_pergunta16.value != "dma") {
        in_pergunta16.style.background = "red";

    }



}