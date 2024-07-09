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
                                            <h1 class="font-medium text-3xl block dark:text-slate-100">Marketing Dashboard</h1>
                                            <ol class="list-reset flex text-sm">
                                                <li><a href="#" class="text-gray-500 dark:text-slate-400">Robotech</a></li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-gray-500 dark:text-slate-400">Dashboard</li>
                                                <li><span class="text-gray-500 dark:text-slate-400 mx-2">/</span></li>
                                                <li class="text-primary-500 hover:text-primary-600 dark:text-primary-400">Marketing</li>
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
                    <form action="MKTDB" method="get" class="mb-4 grid grid-cols-1 gap-4 md:grid-cols-12">



                        <!-- From Date Filter -->
                        <div class="md:col-span-2">
                            <label for="productname" class="block text-sm font-medium text-gray-700">Form</label>
                            <input value="${from}" name="form" type="date" class="mt-1 block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                        </div>

                        <!-- To Date Filter -->
                        <div class="md:col-span-2">
                            <label for="name" class="block text-sm font-medium text-gray-700">To</label>
                            <input value="${to}" name="to" type="date" class="mt-1 block w-full py-2 px-3 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                        </div>



                        <!-- Submit Button -->
                        <div class="md:col-span-1 flex justify-end items-end">
                            <button type="submit" class="inline-flex items-center px-4 py-2 border border-transparent text-sm font-medium rounded-md shadow-sm text-dark bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                                Search
                            </button>
                        </div>
                    </form>
                    <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4">  

                        <div class="col-span-12 sm:col-span-12 md:col-span-6 lg:col-span-3 xl:col-span-3">
                            <div class="bg-white shadow-sm dark:shadow-slate-700/10 dark:bg-gray-900  rounded-md w-full relative mb-4">
                                <div class="flex-auto p-4">
                                    <div class="flex justify-between xl:gap-x-2 items-cente">
                                        <div class="self-center"> 
                                            <p class="text-gray-800 font-semibold dark:text-slate-400 uppercase">New customers</p>                           
                                            <h3 class="my-4 font-semibold text-[30px] dark:text-slate-200">${users.size()}</h3>                                              
                                        </div>                                       
                                        <div class="self-center">                                                
                                            <i data-lucide="users" class=" h-16 w-16 stroke-green/30"></i>
                                        </div>                                            
                                    </div>
                                    <p class="truncate text-slate-400"><span class="text-red-500"><i class="mdi mdi-trending-down"></i>0.6%</span> Bounce Rate Weekly</p>
                                </div><!--end card-body-->   
                                <div class="flex-auto p-0 overflow-hidden"> 
                                    <div class="flex mb-0 h-full">
                                        <div class="w-full">                                                
                                            <div class="apexchart-wrapper">
                                                <div id="dash_spark_1" class="chart-gutters"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end card-body-->   

                            </div> <!--end inner-grid-->                                                                                                  
                        </div><!--end col-->

                        <div class="col-span-12 sm:col-span-12 md:col-span-6 lg:col-span-3 xl:col-span-3">
                            <div class="bg-white shadow-sm dark:shadow-slate-700/10 dark:bg-gray-900  rounded-md w-full relative mb-4">
                                <div class="flex-auto p-4">
                                    <div class="flex justify-between xl:gap-x-2 items-cente">
                                        <div class="self-center"> 
                                            <p class="text-gray-800 font-semibold dark:text-slate-400 uppercase">New products</p>                           
                                            <h3 class="my-4 font-semibold text-[30px] dark:text-slate-200">${products.size()}</h3>                                              
                                        </div>                                       
                                        <div class="self-center">                                                
                                            <i data-lucide="box" class="h-16 w-16 stroke-green/30"></i>
                                        </div>                                            
                                    </div>
                                    <p class="truncate text-slate-400"><span class="text-red-500"><i class="mdi mdi-trending-down"></i>0.6%</span> Bounce Rate Weekly</p>
                                </div><!--end card-body-->   
                                <div class="flex-auto p-0 overflow-hidden"> 
                                    <div class="flex mb-0 h-full">
                                        <div class="w-full">                                                
                                            <div class="apexchart-wrapper">
                                                <div id="dash_spark_1" class="chart-gutters"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end card-body-->   

                            </div> <!--end inner-grid-->                                                                                                  
                        </div><!--end col-->

                        <div class="col-span-12 sm:col-span-12 md:col-span-6 lg:col-span-3 xl:col-span-3">
                            <div class="bg-white shadow-sm dark:shadow-slate-700/10 dark:bg-gray-900  rounded-md w-full relative mb-4">
                                <div class="flex-auto p-4">
                                    <div class="flex justify-between xl:gap-x-2 items-cente">
                                        <div class="self-center"> 
                                            <p class="text-gray-800 font-semibold dark:text-slate-400 uppercase">New blogs</p>                           
                                            <h3 class="my-4 font-semibold text-[30px] dark:text-slate-200">${blogs.size()}</h3>                                              
                                        </div>                                       
                                        <div class="self-center">                                                
                                            <i data-lucide="file-text" class="h-16 w-16 stroke-green/30"></i>
                                        </div>                                            
                                    </div>
                                    <p class="truncate text-slate-400"><span class="text-red-500"><i class="mdi mdi-trending-down"></i>0.6%</span> Bounce Rate Weekly</p>
                                </div><!--end card-body-->   
                                <div class="flex-auto p-0 overflow-hidden"> 
                                    <div class="flex mb-0 h-full">
                                        <div class="w-full">                                                
                                            <div class="apexchart-wrapper">
                                                <div id="dash_spark_1" class="chart-gutters"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--end card-body-->   

                            </div> <!--end inner-grid-->                                                                                                  
                        </div><!--end col-->
                        
                        <div class="col-span-12 sm:col-span-12 md:col-span-6 lg:col-span-3 xl:col-span-3">
                            <div class="bg-white shadow-sm dark:shadow-slate-700/10 dark:bg-gray-900  rounded-md w-full relative mb-4">
                                <div class="flex-auto p-4">
                                    <div class="flex justify-between xl:gap-x-2 items-cente">
                                        <div class="self-center"> 
                                            <p class="text-gray-800 font-semibold dark:text-slate-400 uppercase">Customer Reviews</p>                           
                                            <h3 class="my-4 font-semibold text-[30px] dark:text-slate-200">78%</h3>                                                
                                        </div>                                       
                                        <div class="self-center">                                                
                                            <i data-lucide="gem" class=" h-16 w-16 stroke-yellow-500/30"></i>
                                        </div>                                            
                                    </div>
                                    <p class="truncate text-slate-400"><span class="text-green-500"><i class="mdi mdi-trending-up"></i>1.5%</span> Weekly Avg.Sessions</p>        
                                </div><!--end card-body-->  
                                <div class="flex-auto p-0 overflow-hidden"> 
                                    <div class="grid grid-cols-12">
<!--                                        <div class="col-span-6">
                                            <div id="ana_device" class="apex-charts"></div>
                                        </div>end col-->
                                        <div class="col-span-6">
                                            <ol class="list-none list-inside">
                                                <li class="-mt-1 text-slate-700 dark:text-slate-400 text-sm"><i class="icofont-caret-right text-red-500 text-lg"></i> ⭐</li>
                                                <li class="-mt-1 text-slate-700 dark:text-slate-400 text-sm"><i class="icofont-caret-right text-purple-500 text-lg"></i> ⭐⭐</li>
                                                <li class="-mt-1 text-slate-700 dark:text-slate-400 text-sm"><i class="icofont-caret-right text-yellow-500 text-lg"></i> ⭐⭐⭐</li>
                                                <li class="-mt-1 text-slate-700 dark:text-slate-400 text-sm"><i class="icofont-caret-right text-primary-500 text-lg"></i> ⭐⭐⭐⭐</li>
                                                <li class="-mt-1 text-slate-700 dark:text-slate-400 text-sm"><i class="icofont-caret-right text-green-500 text-lg"></i> ⭐⭐⭐⭐⭐</li>
                                            </ol>
                                        </div><!--end col-->
                                    </div><!--end grid-->
                                </div><!--end card-body-->                                
                            </div> <!--end inner-grid--> 
                        </div>




                    </div> <!--end grid-->



                    <div class="grid grid-cols-12 sm:grid-cols-12 md:grid-cols-12 lg:grid-cols-12 xl:grid-cols-12 gap-4">

                        <div class="col-span-12 sm:col-span-12 md:col-span-12 lg:col-span-12 xl:col-span-12">
                            <div class="w-full relative mb-4">
                                <div class="border-b border-dashed border-slate-200 dark:border-slate-700 py-3 px-4 dark:text-slate-300/70">
                                    <div class="flex-none md:flex">
                                        <h4 class="font-medium flex-1 self-center mb-2 md:mb-0 text-xxl">Marketing Report</h4>
                                        <div class="dropdown inline-block">
                                            <button data-fc-autoclose="both" data-fc-type="dropdown" class="dropdown-toggle px-3 py-1 text-xs font-medium text-gray-500 focus:outline-none bg-white rounded border border-gray-200 hover:bg-gray-50 hover:text-slate-800 focus:z-10 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700" type="button">
                                                This Month 
                                                <i class="fas fa-chevron-down text-xs ml-2"></i>
                                            </button>
                                            <!-- Dropdown menu -->
                                            <div class="right-auto md:right-0 hidden z-10 w-28 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700">
                                                <ul class="py-1 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefault">
                                                    <li>
                                                        <a href="#" class="block py-2 px-4 hover:bg-gray-50 dark:hover:bg-gray-600 dark:hover:text-white">Today</a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="block py-2 px-4 hover:bg-gray-50 dark:hover:bg-gray-600 dark:hover:text-white">Last Week</a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="block py-2 px-4 hover:bg-gray-50 dark:hover:bg-gray-600 dark:hover:text-white">Last Month</a>
                                                    </li>
                                                    <li>
                                                        <a href="#" class="block py-2 px-4 hover:bg-gray-50 dark:hover:bg-gray-600 dark:hover:text-white">This Year</a>  
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>   
                                </div>
                                <div class="flex-auto p-4">
                                    <div id="crm-dash" class="apex-charts mt-5"></div>
                                </div><!--end card-body-->                          
                            </div> <!--end inner-grid-->                                                                                                  
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
            </div><!--end /div-->
        </div>
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
