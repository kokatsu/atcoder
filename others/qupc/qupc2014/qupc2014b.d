import std;

void main() {
    string[] list = [
        "nil", "un", "bi", "tri", "quad", "pent", "hex", "sept", "oct", "enn"
    ];

    auto N = readln.chomp.to!(dchar[]);

    string str = N.map!(c => list[c - '0']).join ~ "ium";
    str = str.replace("ii", "i");
    str = str.replace("ennn", "enn");

    string res = str.capitalize;
    res.writeln;
}
