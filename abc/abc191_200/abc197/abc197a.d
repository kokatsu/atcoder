import std;

void main() {
    auto S = readln.chomp;

    string res = S[1 .. $] ~ S[0];
    res.writeln;
}
