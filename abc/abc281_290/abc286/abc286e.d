import std;

struct City {
    long cnt, num;
}

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto S = new string[](N);
    foreach (i; 0 .. N) readf("%s\n", S[i]);

    auto list = new City[][](N, N);
    foreach (i; 0 .. N) {
        list[i][] = City(long.max/4, 0);
        list[i][i] = City(0, A[i]);
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (S[i][j] == 'N') continue;

            list[i][j] = City(list[i][i].cnt+1, list[i][i].num+A[j]);
        }
    }

    foreach (i; 0 .. N) {
        foreach (j; 0 .. N) {
            if (j == i) continue;

            foreach (k; 0 .. N) {
                if (k == i || k == j) continue;

                City tmp = list[j][i];
                tmp.cnt += list[i][k].cnt, tmp.num += list[i][k].num;
                tmp.num -= A[i];

                if (tmp.cnt < list[j][k].cnt || (tmp.cnt == list[j][k].cnt && tmp.num > list[j][k].num)) {
                    list[j][k] = tmp;
                }
            }
        }
    }

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long U, V;
        readf("%d %d\n", U, V);

        --U, --V;

        if (list[U][V].cnt == long.max / 4) {
            writeln("Impossible");
        }
        else {
            writeln(list[U][V].cnt, " ", list[U][V].num);
        }
    }
}