import std;

void main() {
    string S;
    readf("%s\n", S);

    bool isOK = (S.front == 'A');
    isOK &= (S[2 .. $ - 1].canFind('C'));

    int cnt;
    foreach (s; S) {
        if (std.uni.isLower(s))
            ++cnt;
    }

    isOK &= (S.length == cnt + 2);

    writeln(isOK ? "AC" : "WA");
}
