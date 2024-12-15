import std;

enum string TTPC = "TTPC";

struct Visited {
    bool flag;
    int cnt;
}

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.to!(dchar[]);

    auto A = readln.split.to!(int[]);
    auto x = readln.split.to!(int[]);

    A[] -= 1, x[] -= 1;

    int last, cnt;
    Visited[string] visited;
    visited[format("%(%02d%)", x)] = Visited(true, 0);
    while (true) {
        ++cnt;

        foreach (ref u; x) {
            u = A[u];
        }

        string T = x.map!(i => S[i].to!string).join;
        string K = format("%(%02d%)", x);
        if (K in visited) {
            if (visited[K].flag || visited[K].cnt < last) {
                last = -1;
            }
            break;
        }
        else {
            if (T == TTPC) {
                last = cnt;
                visited[K] = Visited(true, cnt);
            }
            else {
                visited[K] = Visited(false, cnt);
            }
        }
    }

    string res = last == -1 ? "NeverEnds" : last.to!string;
    res.writeln;
}