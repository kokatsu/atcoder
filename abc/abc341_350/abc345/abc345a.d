import std;

void main() {
    string S;
    readf("%s\n", S);

    bool f(string x) {
        auto g = x.group.array;

        if (g.length != 3) {
            return false;
        }

        if (!(g[0][0] == '<' && g[0][1] == 1)) {
            return false;
        }

        if (!(g[2][0] == '>' && g[2][1] == 1)) {
            return false;
        }

        return g[1][0] == '=';
    }

    string res = f(S) ? "Yes" : "No";
    res.writeln;
}
