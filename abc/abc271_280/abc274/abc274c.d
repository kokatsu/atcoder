import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto res = new int[](N*2+2);
    res[2..$] = -1;

    foreach (i, a; A) {
        res[(i+1)*2] = res[(i+1)*2+1] = res[a] + 1;
    }

    res.popFront;

    foreach (r; res) r.writeln;
}