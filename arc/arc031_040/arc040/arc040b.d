import std;

void main() {
    int N, R;
    readf("%d %d\n", N, R);

    auto S = readln.chomp.to!(dchar[]);

    int pos = S.retro.countUntil('.').to!int;
    if (pos == -1) {
        writeln(0);
        return;
    }

    int len = max(0, N - pos - R), res = len + 1;
    foreach_reverse (i; 0 .. len) {
        if (S[i] == '.') {
            foreach (j; 0 .. R) {
                if (i - j < 0)
                    continue;

                S[i - j] = 'o';
            }

            ++res;
        }
    }

    res.writeln;
}
