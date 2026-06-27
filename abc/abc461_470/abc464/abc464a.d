import std;

void main() {
    string S;
    readfln("%s", S);

    ulong L = S.length;
    ulong E = S.count('E');

    string res = E * 2 > L ? "East" : "West";
    res.writeln;
}
