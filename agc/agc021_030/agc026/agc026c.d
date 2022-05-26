import std;

struct Color {
    dchar[] arr;
    this(long x) {
        arr.length = x;
        arr[] = '*';
    }
}

void main() {
    long N;
    readf("%d\n", N);

    auto S = readln.chomp;

    long[Color] cnts;
    foreach (i; 0 .. 1<<N) {
        auto key = Color(N*2);
        long red, blue = N;
        foreach (j; 0 .. N) {
            ((i >> j) & 1 ? key.arr[red++] : key.arr[blue++]) = S[j];
        }

        ++cnts[key];
    }

    long res;
    foreach (i; 0 .. 1<<N) {
        auto key = Color(N*2);
        long red, blue = N;
        foreach_reverse (j; 0 .. N) {
            ((i >> j) & 1 ? key.arr[red++] : key.arr[blue++]) = S[j+N];
        }

        if (key in cnts) res += cnts[key];
    }

    res.writeln;
}