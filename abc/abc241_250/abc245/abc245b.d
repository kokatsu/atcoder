import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int lim = 3000;
    auto list = new bool[](lim);
    foreach (a; A) list[a] = true;

    foreach (i, l; list) {
        if (l) continue;

        i.writeln;
        break;
    }
}