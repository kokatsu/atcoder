import std;

void main() {
    int N;
    string S, T;
    readf("%d\n%s\n%s\n", N, S, T);

    string U = S.replace('1', 'l').replace('0', 'o');
    string V = T.replace('1', 'l').replace('0', 'o');

    string res = U == V ? "Yes" : "No";
    res.writeln;
}
