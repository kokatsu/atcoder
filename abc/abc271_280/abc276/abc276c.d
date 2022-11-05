import std;

void main() {
    int N;
    readf("%d\n", N);

    auto P = readln.chomp.split.to!(int[]);

    int[] list = [P[N-1]];
    int idx = N;
    foreach_reverse (i; 0 .. N-1) {
        list ~= P[i];

        if (P[i] > P[i+1]) {
            idx = i;
            break;
        }
    }

    auto S = list.sort;
    auto lb = S.lowerBound(P[idx]);
    int b = lb.back;

    int[] res = new int[](N);
    res[0..idx] = P[0..idx];
    res[idx++] = b;
    foreach_reverse (l; list) {
        if (l == b) continue;
        res[idx++] = l;
    }

    writefln("%(%s %)", res);
}