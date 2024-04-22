import std;

void main() {
    string S;
    readf("%s\n", S);

    string res = S.map!(c => ((c-'A'+23)%26+'A').to!char).to!string();
    res.writeln;
}