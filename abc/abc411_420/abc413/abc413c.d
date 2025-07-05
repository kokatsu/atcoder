import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int index;
    long[] C, X;
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(long[]);
        if (query[0] == 1) {
            C ~= query[1];
            X ~= query[2];
        }
        else {
            long res, rem = query[1];
            while (rem > 0) {
                long M = min(C[index], rem);
                res += M * X[index];
                rem -= M;
                C[index] -= M;
                if (C[index] == 0) {
                    ++index;
                }
            }
            res.writeln;
        }
    }
}
