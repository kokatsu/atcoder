import std;

void main() {
    int N, K;
    string S;
    readf("%d %d\n%s\n", N, K, S);

    auto C = S.count('1').to!int;
    writeln(C % 2 == K % 2 ? "Yes" : "No");
}