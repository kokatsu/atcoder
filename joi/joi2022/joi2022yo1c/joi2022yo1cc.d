import std;

void main() {
    int N, K;
    string S;
    readf("%d\n%d\n%s\n", N, K, S);

    char res = S.count('R') == K ? 'W' : 'R';
    res.writeln;
}