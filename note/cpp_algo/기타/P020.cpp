//  수 정렬하기 2
#include <iostream>
#include <vector>
#include <algorithm>
#include <deque>
#include <stack>
#include <queue>
#include <string>

using namespace std;

void merge_sort(int s, int e);
static vector<int> A;   // static을 사용하는 이유: 다른 파일에서 이 변수를 사용하지 못하게 하기 위함
static vector<int> tmp; //

int main()
{
    ios::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);

    int N;
    cin >> N;
    A = vector<int>(N + 1, 0);
    tmp = vector<int>(N + 1, 0);

    for (int i = 1; i <= N; i++)
    {
        cin >> A[i];
    }
    merge_sort(1, N);

    for (int i = 1; i <= N; i++)
    {
        cout << A[i] << "\n";
    }
}

void merge_sort(int s, int e)
{
    if (e - s < 1)
    {
        return;
    }

    int m = s + (e - s) / 2;
    //
    merge_sort(s, m);
    merge_sort(m + 1, e);

    for (int i = s; i <= e; i++)
    {
        tmp[i] = A[i];
    }

    int k = s;
    int index1 = s;
    int index2 = m + 1;

    while (index1 <= m && index2 <= e)
    {
        if (tmp[index1] > tmp[index2])
        {
            A[k] = tmp[index2];
            k++;
            index2++;
        }
        else
        {
            A[k] = tmp[index1];
            k++;
            index1++;
        }
    }
    while (index1 <= m)
    {
        A[k] = tmp[index1];
        k++;
        index1++;
    }
    while (index2 <= e)
    {
        A[k] = tmp[index2];
        k++;
        index2++;
    }
}