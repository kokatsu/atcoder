import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp;

    int l, r;
    foreach (s; S) {
        if (s == ')') {
            if (r > 0)
                --r;
            else
                ++l;
        }
        else {
            ++r;
        }
    }

    auto res = '('.repeat(l).to!string ~ S ~ ')'.repeat(r).to!string;
    res.writeln;
}
