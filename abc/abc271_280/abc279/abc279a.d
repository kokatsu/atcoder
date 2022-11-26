import std;

void main() {
    string S;
    readf("%s\n", S);

    ulong res = S.count('v') + S.count('w') * 2;
    res.writeln;
}