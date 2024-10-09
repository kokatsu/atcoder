import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    auto G = S.assocArray(true.repeat);

    string res = G.length == S.length ? "yes" : "no";
    res.writeln;
}