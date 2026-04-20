import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[][int] M;
    foreach (i, a; A) {
        M[a] ~= i.to!int;
    }

    SortedRange!(int[], "a < b", SortedRangeOptions.assumeSorted)[int] S;
    foreach (key, value; M) {
        S[key] = value.assumeSorted;
    }

    long res;
    foreach (i; 0 .. N) {
        if (A[i] % 5 != 0) {
            continue;
        }

        int a = A[i] / 5;
        int x = a * 7, y = a * 3;
        if ((x !in S) || (y !in S)) {
            continue;
        }

        long L = 1, U = 1;
        if (x in S) {
            L *= S[x].lowerBound(i).length;
            U *= S[x].upperBound(i).length;
        }

        if (y in S) {
            L *= S[y].lowerBound(i).length;
            U *= S[y].upperBound(i).length;
        }

        res += L + U;
    }

    res.writeln;
}
