import std;

void main() {
    string S, T;
    readf("%s\n%s\n", S, T);

    auto slen = S.length, tlen = T.length;

    bool isOK;
    if (slen <= tlen) {
        isOK = (S == T[0 .. slen]);
    }

    writeln(isOK ? "Yes" : "No");
}
