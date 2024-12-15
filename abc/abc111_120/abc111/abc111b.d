import std;

void main() {
    string N;
    readf("%s\n", N);

    bool f(string s) {
        return s.all!(x => x == s.front);
    }

    while (!f(N))
        N = N.succ;

    N.writeln;
}
