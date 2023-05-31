import std;

void main() {
    string S;
    readf("%s\n", S);

    int p = -1;
    auto L = new ulong[](S.length);
    foreach (i, s; S) {
        if (s == '(') {
            L[++p] = i + 1;
        }
        else {
            writeln(L[p--], " ", i+1);
        }
    }
}