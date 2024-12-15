import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    auto cnts = new int[](N);
    foreach (a; A)
        ++cnts[a];

    auto list = new int[][](N);
    int res = N;
    foreach (i, c; cnts) {
        if (c == 0) {
            --res;
            list[0] ~= i.to!int;
        }
    }

    foreach (i; 0 .. N - 1) {
        if (list[i].empty)
            break;

        foreach (l; list[i]) {
            --cnts[A[l]];
            if (cnts[A[l]] == 0) {
                --res;
                list[i + 1] ~= A[l];
            }
        }
    }

    res.writeln;
}
