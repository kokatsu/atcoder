import std;

void main() {
    long N;
    readf("%d\n", N);

    long[long][] a = new long[long][](N);
    long[][long] factors;
    foreach (i; 0 .. N) {
        long m;
        readf("%d\n", m);

        foreach (_; 0 .. m) {
            long p, e;
            readf("%d %d\n", p, e);

            a[i][p] = e;
            factors[p] ~= e;
        }
    }

    long[long] total;
    foreach (key, val; factors) {
        val.sort!"a > b";
        total[key] = val[0];
    }

    long[long[long]] list;
    foreach (i; 0 .. N) {
        long[long] tmp;
        foreach (key, val; a[i]) {
            if (total[key] != val)
                continue;
            if (factors[key].length > 1 && factors[key][1] == val)
                continue;

            ++tmp[key];
        }

        ++list[tmp];
    }

    auto res = list.length;
    res.writeln;
}
