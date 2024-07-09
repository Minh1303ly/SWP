<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="scroll-smooth group" data-sidebar="brand" dir="ltr">
    <head>
        <meta charset="utf-8" />
        <title>Robotech - Admin & Dashboard Template</title>
        <meta  name="viewport"  content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta  content="Tailwind Multipurpose Admin & Dashboard Template"  name="description"/>
        <meta content="" name="Mannatthemes" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="viewsAdmin/assets/images/favicon.ico" />

        <!-- Css -->
        <!-- Main Css -->
        <link rel="stylesheet" href="viewsAdmin/assets/libs/icofont/icofont.min.css">
        <link href="viewsAdmin/assets/libs/flatpickr/flatpickr.min.css" type="text/css" rel="stylesheet">
        <link rel="stylesheet" href="viewsAdmin/assets/css/tailwind.min.css">
        <script>
            function submitForm(id) {
                document.getElementById("statusChangeForm-" + id).submit();
            }
        </script>
    </head>

    <body data-layout-mode="light"  data-sidebar-size="default" data-theme-layout="vertical" class="bg-[#EEF0FC] dark:bg-gray-900">

        <jsp:include page="components/leftBar.jsp" />

        <jsp:include page="components/topBar.jsp" />

        <jsp:include page="components/notification.jsp" />


        <div class="ltr:flex flex-1 rtl:flex-row-reverse">
            <div class="page-wrapper relative ltr:ms-auto rtl:me-auto rtl:ms-0 w-[calc(100%-260px)] px-4 pt-[64px] duration-300">
                <div class="xl:w-full">        
                    <div class="flex flex-wrap">
                        <div class="flex items-center py-4 w-full">
                            <div class="w-full">                    
                                <div class="">
                                    <div class="flex flex-wrap justify-between">
                                        <div class="items-center ">
                                            <h1 class="font-medium text-3xl block dark:text-slate-100">Feedback List</h1>
                                            <ol class="list-reset flex text-sm">
                                                <li><a href="#" class="text-gray-500 dark:text-slate-400">Robotech</a></li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-gray-500 dark:text-slate-400">Marketing</li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-primary-500 hover:text-primary-600 dark:text-primary-400">Feedback</li>
                                            </ol>
                                        </div>
                                        <div class="flex items-center">
                                            <div class="today-date leading-5 mt-2 lg:mt-0 form-input w-auto rounded-md border inline-block border-primary-500/60 dark:border-primary-500/60 text-primary-500 bg-transparent px-3 py-1 focus:outline-none focus:ring-0 placeholder:text-slate-400/70 placeholder:font-normal placeholder:text-sm hover:border-primary-400 focus:border-primary-500 dark:focus:border-primary-500  dark:hover:border-slate-700">
                                                <input type="text" class="dash_date border-0 focus:border-0 focus:outline-none" readonly  required="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--end container-->

                <div class="xl:w-full  min-h-[calc(100vh-138px)] relative pb-14"> 
                    <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4">
                        <div class="col-span-12 sm:col-span-12 md:col-span-12 lg:col-span-12 xl:col-span-12">
                            <div class="w-full relative mb-4">  
                                <div class="flex-auto p-0 md:p-4">
                                    <div class="mb-4 border-b border-gray-200 dark:border-slate-700" data-fc-type="tab">
                                        <ul class="flex flex-wrap -mb-px text-sm font-medium text-center" aria-label="Tabs">
                                        </ul>
                                    </div>
                                    <a href="url?action=new" class="bg-blue-500 text-white py-2 px-4 rounded mb-4 inline-block">New URL</a>

                                    <h2 class="text-2xl font-bold mb-4">Blog Posts</h2>
                                    <div class="flex mb-4">
                                        <div class="w-1/3 pr-4">
                                            <form action="blogs" method="get" class="space-y-4">
                                                <div>
                                                    <label for="title" class="block text-sm font-medium text-gray-700">Search by Title</label>
                                                    <input type="text" id="title" name="title" placeholder="Search by title" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                                </div>
                                                <div>
                                                    <label for="category" class="block text-sm font-medium text-gray-700">Filter by Category</label>
                                                    <input type="text" id="category" name="category" placeholder="Category" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                                </div>
                                                <div>
                                                    <label for="author" class="block text-sm font-medium text-gray-700">Filter by Author</label>
                                                    <input type="text" id="author" name="author" placeholder="Author" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                                </div>
                                                <div>
                                                    <label for="status" class="block text-sm font-medium text-gray-700">Filter by Status</label>
                                                    <input type="text" id="status" name="status" placeholder="Status" class="mt-1 block w-full shadow-sm sm:text-sm border-gray-300 rounded-md">
                                                </div>
                                                <button type="submit" class="w-full bg-blue-500 text-white py-2 px-4 rounded">Filter</button>
                                            </form>
                                        </div>
                                        <div class="w-2/3">
                                            <a href="blogs?action=new" class="bg-green-500 text-white py-2 px-4 rounded mb-4 inline-block">Add New Blog</a>
                                            <table class="min-w-full bg-white shadow-md rounded">
                                                <thead class="bg-gray-50">
                                                    <tr>
                                                        <th class="px-4 py-2">ID</th>
                                                        <th class="px-4 py-2">Thumbnail</th>
                                                        <th class="px-4 py-2">Title</th>
                                                        <th class="px-4 py-2">Category</th>
                                                        <th class="px-4 py-2">Author</th>
                                                        <th class="px-4 py-2">Featured</th>
                                                        <th class="px-4 py-2">Status</th>
                                                        <th class="px-4 py-2">Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="blog" items="${listBlogs}">
                                                        <tr>
                                                            <td class="border px-4 py-2">${blog.id}</td>
                                                            <td class="border px-4 py-2"><img src="${blog.cover_img}" alt="${blog.title}" class="w-16 h-16"></td>
                                                            <td class="border px-4 py-2">${blog.title}</td>
                                                            <td class="border px-4 py-2">${blog.blog_cate_id}</td>
                                                            <td class="border px-4 py-2">${blog.user_id}</td>
                                                            <td class="border px-4 py-2">${blog.featured ? "Yes" : "No"}</td>
                                                            <td class="border px-4 py-2">${blog.status}</td>
                                                            <td class="border px-4 py-2">
                                                                <a href="blogs?action=edit&id=${blog.id}" class="bg-yellow-500 text-white py-1 px-2 rounded">Edit</a>
                                                                <a href="delete-blog?id=${blog.id}" class="bg-red-500 text-white py-1 px-2 rounded">Delete</a>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                            <nav aria-label="Page navigation" class="mt-4">
                                                <ul class="inline-flex -space-x-px">
                                                    <c:forEach var="i" begin="1" end="${totalPages}">
                                                        <li class="${currentPage == i ? 'bg-blue-500 text-white' : 'bg-white text-gray-500'} border border-gray-300 py-2 px-3">
                                                            <a href="blogs?page=${i}" class="page-link">${i}</a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>                               
                                </div><!--end col-->                        
                            </div> <!--end grid-->                                        
                            <!-- footer -->
                            <div class="absolute bottom-0 -left-4 -right-4 block print:hidden border-t p-4 h-[52px] dark:border-slate-700/40">
                                <div class="container">
                                    <!-- Footer Start -->
                                    <footer
                                        class="footer bg-transparent  text-center  font-medium text-slate-600 dark:text-slate-400 md:text-left "
                                        >
                                        &copy;
                                        <script>
                                            var year = new Date();
                                            document.write(year.getFullYear());
                                        </script>
                                        Robotech
                                        <span class="float-right hidden text-slate-600 dark:text-slate-400 md:inline-block"
                                              >Crafted with <i class="ti ti-heart text-red-500"></i> by
                                            Mannatthemes</span
                                        >
                                    </footer>
                                    <!-- end Footer -->
                                </div>
                            </div>


                        </div><!--end container-->
                    </div><!--end page-wrapper-->
                </div><!--end /div-->
                <!-- JAVASCRIPTS -->
                <!-- <div class="menu-overlay"></div> -->
                <script src="viewsAdmin/assets/libs/lucide/umd/lucide.min.js"></script>
                <script src="viewsAdmin/assets/libs/simplebar/simplebar.min.js"></script>
                <script src="viewsAdmin/assets/libs/flatpickr/flatpickr.min.js"></script>
                <script src="viewsAdmin/assets/libs/@frostui/tailwindcss/frostui.js"></script>

                <script src="viewsAdmin/assets/libs/apexcharts/apexcharts.min.js"></script>
                <script src="viewsAdmin/assets/js/pages/analytics-index.init.js"></script>
                <script src="viewsAdmin/assets/js/app.js"></script>
                <!-- JAVASCRIPTS -->
                <script src="${pageContext.request.contextPath}/viewsAdmin/assets/js/dataTable.js"></script>

                </body>
                </html>