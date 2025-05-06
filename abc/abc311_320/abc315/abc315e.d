import std;

void main() {
    int N;
    readf("%d\n", N);

    auto C = new int[](N);
    auto P = new int[][](N);
    foreach (i; 0 .. N) {
        auto line = readln.chomp.split.to!(int[]);

        C[i] = line[0];
        if (line.length > 1) {
            P[i] = line[1 .. $];
            P[i][] -= 1;
        }
    }

    auto reads = new bool[](N);
    int[] queue = [0];
    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;

        foreach (p; P[f]) {
            if (reads[p]) {
                continue;
            }

            reads[p] = true;
            queue ~= p;
        }
    }

    auto D = new int[](N);
    foreach (p; P) {
        foreach (q; p) {
            ++D[q];
        }
    }

    foreach (i; 0 .. N) {
        if (D[i] == 0) {
            queue ~= i;
        }
    }

    int[] ts;
    while (!queue.empty) {
        auto f = queue.front;
        queue.popFront;

        ts ~= f;

        foreach (p; P[f]) {
            --D[p];
            if (D[p] == 0) {
                queue ~= p;
            }
        }
    }

    auto order = new int[](N);
    foreach (i, t; ts) {
        order[t] = i.to!int;
    }

    auto res = N.iota
        .filter!(i => reads[i])
        .array
        .sort!((i, j) => order[i] > order[j])
        .map!(i => i + 1)
        .array;
    writefln("%(%d %)", res);
}
